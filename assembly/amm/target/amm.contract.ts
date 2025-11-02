import * as _chain from "as-chain";
import {
  check,
  Contract,
  EMPTY_NAME,
  Name,
  requireAuth,
  TableStore,
  currentTimeSec,
  U128,
  InlineAction,
  PermissionLevel,
  Asset,
  Symbol,
} from "proton-tsc";
import { PairDataTable, LiquidityTable, AmmConfigTable } from "./tables";
import { TokenTransfer } from "./amm.inline";

@contract
export class ammContract extends Contract {
  private pairDataTable: TableStore<PairDataTable> =
    new TableStore<PairDataTable>(this.receiver, this.receiver);

  private liquidityTable: TableStore<LiquidityTable> =
    new TableStore<LiquidityTable>(this.receiver, this.receiver);

  private ammConfigTable: TableStore<AmmConfigTable> =
    new TableStore<AmmConfigTable>(this.receiver, this.receiver);

  private readonly MINIMUM_LIQUIDITY: u64 = 1000;
  private readonly FEE_DENOMINATOR: u32 = 10000; // For basis points (0.30% = 30/10000)

  @action("init")
  initialize(factoryContract: Name, swapFee: u32): void {
    requireAuth(this.receiver);

    check(factoryContract != EMPTY_NAME, "AMM: INVALID_FACTORY");
    check(swapFee > 0 && swapFee <= 100, "AMM: FEE_TOO_HIGH");

    const existing = this.ammConfigTable.get(0);
    check(!existing, "AMM: ALREADY_INITIALIZED");

    const config = new AmmConfigTable(0, factoryContract, swapFee);
    this.ammConfigTable.store(config, this.receiver);
  }

  @action("addpair")
  addPair(token0: Name, token1: Name): void {
    const config = this.ammConfigTable.requireGet(0, "AMM: NOT_INITIALIZED");
    requireAuth(config.factoryContract);

    check(token0 != EMPTY_NAME && token1 != EMPTY_NAME, "AMM: ZERO_ADDRESS");
    check(token0.N != token1.N, "AMM: IDENTICAL_ADDRESSES");

    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];
    const pairId = this.computePairId(t0, t1);

    const existing = this.pairDataTable.get(pairId);
    check(!existing, "AMM: PAIR_EXISTS");

    const pairData = new PairDataTable(
      pairId,
      t0,
      t1,
      0,
      0,
      0,
      U128.from(0),
      currentTimeSec(),
      U128.from(0),
      U128.from(0)
    );

    this.pairDataTable.store(pairData, this.receiver);
  }

  @action("removepair")
  removePair(token0: Name, token1: Name): void {
    const config = this.ammConfigTable.requireGet(0, "AMM: NOT_INITIALIZED");
    requireAuth(config.factoryContract);

    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];
    const pairId = this.computePairId(t0, t1);

    const pair = this.pairDataTable.requireGet(pairId, "AMM: PAIR_NOT_FOUND");

    check(pair.totalSupply == 0, "AMM: PAIR_HAS_LIQUIDITY");

    this.pairDataTable.remove(pair);
  }

  @action("addliquidity")
  addLiquidity(
    token0: Name,
    token1: Name,
    token0Contract: Name,
    token1Contract: Name,
    amount0Desired: u64,
    amount1Desired: u64,
    amount0Min: u64,
    amount1Min: u64,
    token0Symbol: string,
    token1Symbol: string,
    token0Precision: u8,
    token1Precision: u8,
    provider: Name
  ): void {
    requireAuth(provider);

    check(
      token0 != EMPTY_NAME && token1 != EMPTY_NAME,
      "Add Liquidity Failed: One or both token addresses are invalid or empty."
    );

    check(
      token0.N != token1.N,
      "Add Liquidity Failed: You cannot create a pool with two identical tokens."
    );

    check(
      amount0Desired > 0 && amount1Desired > 0,
      "Add Liquidity Failed: You must provide a positive amount for both tokens."
    );

    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];

    const pairId = this.computePairId(t0, t1);
    const pair = this.pairDataTable.requireGet(
      pairId,
      "Add Liquidity Failed: This token pair does not exist."
    );

    let amount0: u64;
    let amount1: u64;

    if (pair.reserve0 == 0 && pair.reserve1 == 0) {
      amount0 = amount0Desired;
      amount1 = amount1Desired;
    } else {
      // Calculate optimal amounts to maintain price ratio
      const amount1Optimal = this.quote(
        amount0Desired,
        pair.reserve0,
        pair.reserve1
      );

      if (amount1Optimal <= amount1Desired) {
        check(
          amount1Optimal >= amount1Min,
          `Add Liquidity Failed: The required amount of ${token1Symbol} (${amount1Optimal}) is below your minimum (${amount1Min}). Try increasing your ${token1Symbol} input or lowering slippage.`
        );
        amount0 = amount0Desired;
        amount1 = amount1Optimal;
      } else {
        const amount0Optimal = this.quote(
          amount1Desired,
          pair.reserve1,
          pair.reserve0
        );
        check(
          amount0Optimal <= amount0Desired,
          `Add Liquidity Failed: The optimal ${token0Symbol} amount (${amount0Optimal}) exceeds your provided amount (${amount0Desired}). Please increase ${token0Symbol} or lower ${token1Symbol}.`
        );

        check(
          amount0Optimal >= amount0Min,
          `Add Liquidity Failed: The required amount of ${token0Symbol} (${amount0Optimal}) is below your minimum (${amount0Min}). Try increasing your ${token0Symbol} input or lowering slippage.`
        );
        amount0 = amount0Optimal;
        amount1 = amount1Desired;
      }
    }

    let liquidity: u64;

    if (pair.totalSupply == 0) {
      // Initial liquidity: sqrt(x * y) - MINIMUM_LIQUIDITY
      // liquidity = this.sqrt(u64(amount0) * u64(amount1));
      const product = U128.mul(new U128(amount0), new U128(amount1));
      liquidity = this.sqrtU128(product);
      check(
        liquidity > this.MINIMUM_LIQUIDITY,
        "Add Liquidity Failed: The provided token amounts are too small to mint initial liquidity. Please increase your input amounts."
      );
      liquidity -= this.MINIMUM_LIQUIDITY;
    } else {
      liquidity = this.min(
        (amount0 * pair.totalSupply) / pair.reserve0,
        (amount1 * pair.totalSupply) / pair.reserve1
      );
    }

    check(
      liquidity > 0,
      "Add Liquidity Failed: Insufficient liquidity generated from your token amounts. Try providing larger amounts or check pool ratios."
    );

    // Transfer token0 from provider to AMM
    const asset0 = this.createAsset(amount0, token0Symbol, token0Precision);
    this.transferFrom(
      token0Contract,
      provider,
      this.receiver,
      asset0,
      `Add liquidity: transferring ${amount0} ${token0Symbol}`
    );

    // Transfer token1 from provider to AMM
    const asset1 = this.createAsset(amount1, token1Symbol, token1Precision);
    this.transferFrom(
      token1Contract,
      provider,
      this.receiver,
      asset1,
      `Add liquidity: transferring ${amount1} ${token1Symbol}`
    );

    pair.reserve0 += amount0;
    pair.reserve1 += amount1;

    if (pair.totalSupply == 0) {
      pair.totalSupply = liquidity + this.MINIMUM_LIQUIDITY;
    } else {
      pair.totalSupply += liquidity;
    }

    pair.kLast = U128.mul(new U128(pair.reserve0), new U128(pair.reserve1));
    pair.blockTimestampLast = currentTimeSec();
    this.pairDataTable.update(pair, this.receiver);

    const existingPosition = this.findLiquidityPosition(pairId, provider);

    if (existingPosition) {
      existingPosition.liquidity += liquidity;
      this.liquidityTable.update(existingPosition, this.receiver);
    } else {
      const newLiquidity = new LiquidityTable(
        this.liquidityTable.availablePrimaryKey,
        pairId,
        provider,
        liquidity
      );
      this.liquidityTable.store(newLiquidity, this.receiver);
    }
  }

  @action("remliquidity")
  removeLiquidity(
    token0: Name,
    token1: Name,
    token0Contract: Name,
    token1Contract: Name,
    liquidity: u64,
    amount0Min: u64,
    amount1Min: u64,
    token0Symbol: string,
    token1Symbol: string,
    token0Precision: u8,
    token1Precision: u8,
    provider: Name
  ): void {
    requireAuth(provider);

    check(liquidity > 0, "AMM: INSUFFICIENT_LIQUIDITY_BURNED");

    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];

    const pairId = this.computePairId(t0, t1);
    const pair = this.pairDataTable.requireGet(pairId, "AMM: PAIR_NOT_FOUND");

    const lpPosition = this.findLiquidityPosition(pairId, provider);
    check(lpPosition != null, "AMM: NO_LIQUIDITY");
    check(lpPosition!.liquidity >= liquidity, "AMM: INSUFFICIENT_BALANCE");

    check(pair.totalSupply > 0, "AMM: NO_LIQUIDITY_IN_PAIR");

    const amount0 = (liquidity * pair.reserve0) / pair.totalSupply;
    const amount1 = (liquidity * pair.reserve1) / pair.totalSupply;

    check(amount0 > 0 && amount1 > 0, "AMM: INSUFFICIENT_LIQUIDITY_BURNED");
    check(amount0 >= amount0Min, "AMM: INSUFFICIENT_0_AMOUNT");
    check(amount1 >= amount1Min, "AMM: INSUFFICIENT_1_AMOUNT");

    lpPosition!.liquidity -= liquidity;

    if (lpPosition!.liquidity == 0) {
      this.liquidityTable.remove(lpPosition!);
    } else {
      this.liquidityTable.update(lpPosition!, this.receiver);
    }

    pair.reserve0 -= amount0;
    pair.reserve1 -= amount1;
    pair.totalSupply -= liquidity;
    pair.kLast = U128.mul(new U128(pair.reserve0), new U128(pair.reserve1));
    pair.blockTimestampLast = currentTimeSec();

    this.pairDataTable.update(pair, this.receiver);

    // Transfer token0 from contract back to provider
    const asset0 = this.createAsset(amount0, token0Symbol, token0Precision);
    this.transfer(
      token0Contract,
      this.receiver,
      provider,
      asset0,
      "Remove liquidity: token0"
    );

    // Transfer token1 from contract back to provider
    const asset1 = this.createAsset(amount1, token1Symbol, token1Precision);
    this.transfer(
      token1Contract,
      this.receiver,
      provider,
      asset1,
      "Remove liquidity: token1"
    );
  }

  @action("swap")
  swap(
    tokenIn: Name,
    tokenOut: Name,
    tokenInContract: Name,
    tokenOutContract: Name,
    amountIn: u64,
    amountOutMin: u64,
    tokenInSymbol: string,
    tokenOutSymbol: string,
    tokenInPrecision: u8,
    tokenOutPrecision: u8,
    to: Name
  ): void {
    requireAuth(to);

    check(amountIn > 0, "AMM: INSUFFICIENT_INPUT_AMOUNT");
    check(tokenIn.N != tokenOut.N, "AMM: IDENTICAL_ADDRESSES");

    const sorted = this.sortTokens(tokenIn, tokenOut);
    const t0: Name = sorted[0];
    const t1: Name = sorted[1];
    const pairId = this.computePairId(t0, t1);
    const pair = this.pairDataTable.requireGet(pairId, "AMM: PAIR_NOT_FOUND");

    check(
      pair.reserve0 > 0 && pair.reserve1 > 0,
      "AMM: INSUFFICIENT_LIQUIDITY"
    );

    let reserveIn: u64;
    let reserveOut: u64;
    let isToken0Input: bool = tokenIn.N == pair.token0.N;

    if (isToken0Input) {
      reserveIn = pair.reserve0;
      reserveOut = pair.reserve1;
    } else {
      reserveIn = pair.reserve1;
      reserveOut = pair.reserve0;
    }

    const config = this.ammConfigTable.requireGet(0, "AMM: NOT_INITIALIZED");
    const amountOut = this.computeAmountOut(
      amountIn,
      reserveIn,
      reserveOut,
      config.swapFee
    );

    check(amountOut >= amountOutMin, "AMM: INSUFFICIENT_OUTPUT_AMOUNT");
    check(amountOut < reserveOut, "AMM: INSUFFICIENT_LIQUIDITY");

    // Transfer input tokens from user to contract
    const assetIn = this.createAsset(amountIn, tokenInSymbol, tokenInPrecision);
    this.transferFrom(
      tokenInContract,
      to,
      this.receiver,
      assetIn,
      "Swap: input"
    );

    // Transfer output tokens from user to contract
    const assetOut = this.createAsset(
      amountOut,
      tokenOutSymbol,
      tokenOutPrecision
    );
    this.transfer(
      tokenOutContract,
      this.receiver,
      to,
      assetOut,
      "Swap: output"
    );

    if (isToken0Input) {
      pair.reserve0 += amountIn;
      pair.reserve1 -= amountOut;
    } else {
      pair.reserve1 += amountIn;
      pair.reserve0 -= amountOut;
    }

    check(
      U128.ge(
        U128.mul(new U128(pair.reserve0), new U128(pair.reserve1)),
        U128.mul(new U128(reserveIn), new U128(reserveOut))
      ),
      "AMM: K_INVARIANT_VIOLATED"
    );

    this.updatePriceAccumulators(pair);

    pair.blockTimestampLast = currentTimeSec();
    this.pairDataTable.update(pair, this.receiver);
  }

  // ============================================
  // VIEW FUNCTIONS (Query)
  // ============================================

  @action("getreserves")
  getReserves(token0: Name, token1: Name): void {
    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];
    const pairId = this.computePairId(t0, t1);
    const pair = this.pairDataTable.requireGet(pairId, "AMM: PAIR_NOT_FOUND");
  }

  @action("getamountout")
  getAmountOut(tokenIn: Name, tokenOut: Name, amountIn: u64): void {
    check(amountIn > 0, "AMM: INSUFFICIENT_INPUT_AMOUNT");

    const sorted = this.sortTokens(tokenIn, tokenOut);
    const t0 = sorted[0];
    const t1 = sorted[1];
    const pairId = this.computePairId(t0, t1);
    const pair = this.pairDataTable.requireGet(pairId, "AMM: PAIR_NOT_FOUND");

    let reserveIn: u64;
    let reserveOut: u64;

    if (tokenIn.N == pair.token0.N) {
      reserveIn = pair.reserve0;
      reserveOut = pair.reserve1;
    } else {
      reserveIn = pair.reserve1;
      reserveOut = pair.reserve0;
    }

    const config = this.ammConfigTable.requireGet(0, "AMM: NOT_INITIALIZED");
    const amountOut = this.computeAmountOut(
      amountIn,
      reserveIn,
      reserveOut,
      config.swapFee
    );
  }

  @action("getliquidity")
  getLiquidity(token0: Name, token1: Name, provider: Name): void {
    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];
    const pairId = this.computePairId(t0, t1);

    const position = this.findLiquidityPosition(pairId, provider);
  }

  // ============================================
  // CONFIGURATION
  // ============================================

  @action("setswapfee")
  setSwapFee(newFee: u32): void {
    requireAuth(this.receiver);

    check(newFee > 0 && newFee <= 100, "AMM: INVALID_FEE");

    const config = this.ammConfigTable.requireGet(0, "AMM: NOT_INITIALIZED");
    config.swapFee = newFee;
    this.ammConfigTable.update(config, this.receiver);
  }

  // ============================================
  // INTERNAL HELPER FUNCTIONS
  // ============================================
  private sortTokens(tokenA: Name, tokenB: Name): Name[] {
    check(tokenA.N != tokenB.N, "AMM: IDENTICAL_ADDRESSES");
    return tokenA.N < tokenB.N ? [tokenA, tokenB] : [tokenB, tokenA];
  }

  private computePairId(token0: Name, token1: Name): u64 {
    return token0.N ^ token1.N;
  }

  private quote(amountA: u64, reserveA: u64, reserveB: u64): u64 {
    check(amountA > 0, "AMM: INSUFFICIENT_AMOUNT");
    check(reserveA > 0 && reserveB > 0, "AMM: INSUFFICIENT_LIQUIDITY");
    return (amountA * reserveB) / reserveA;
  }

  private computeAmountOut(
    amountIn: u64,
    reserveIn: u64,
    reserveOut: u64,
    feeBasisPoints: u32
  ): u64 {
    check(amountIn > 0, "AMM: INSUFFICIENT_INPUT_AMOUNT");
    check(reserveIn > 0 && reserveOut > 0, "AMM: INSUFFICIENT_LIQUIDITY");

    const feeMultiplier = this.FEE_DENOMINATOR - feeBasisPoints;

    const amountInU128 = new U128(amountIn);
    const feeMultiplierU128 = new U128(feeMultiplier);
    const reserveInU128 = new U128(reserveIn);
    const reserveOutU128 = new U128(reserveOut);
    const feeDenominatorU128 = new U128(this.FEE_DENOMINATOR);

    const amountInWithFee = U128.mul(amountInU128, feeMultiplierU128);

    const numerator = U128.mul(amountInWithFee, reserveOutU128);

    const denominator = U128.add(
      U128.mul(reserveInU128, feeDenominatorU128),
      amountInWithFee
    );

    const amountOutU128 = U128.div(numerator, denominator);

    return amountOutU128.toU64();
  }

  private sqrtU128(y: U128): u64 {
    if (U128.lt(y, new U128(4))) {
      if (U128.eq(y, U128.from(0))) return 0;
      return 1;
    }

    let z: U128 = y;
    let x: U128 = U128.add(U128.div(y, new U128(2)), U128.from(1));

    while (U128.lt(x, z)) {
      z = x;
      x = U128.div(U128.add(U128.div(y, x), x), new U128(2));
    }

    return z.toU64();
  }

  private min(a: u64, b: u64): u64 {
    return a < b ? a : b;
  }

  private updatePriceAccumulators(pair: PairDataTable): void {
    const timeElapsed = currentTimeSec() - pair.blockTimestampLast;

    if (timeElapsed > 0 && pair.reserve0 != 0 && pair.reserve1 != 0) {
      const reserve0 = new U128(pair.reserve0);
      const reserve1 = new U128(pair.reserve1);

      const one = new U128(1);
      const shift = U128.shl(one, 112);

      const price0 = U128.div(U128.mul(reserve1, shift), reserve0);
      const price1 = U128.div(U128.mul(reserve0, shift), reserve1);

      pair.price0CumulativeLast = U128.add(
        pair.price0CumulativeLast,
        U128.mul(price0, new U128(timeElapsed))
      );

      pair.price1CumulativeLast = U128.add(
        pair.price1CumulativeLast,
        U128.mul(price1, new U128(timeElapsed))
      );
    }
  }

  private findLiquidityPosition(
    pairId: u64,
    provider: Name
  ): LiquidityTable | null {
    const count = this.liquidityTable.availablePrimaryKey;

    for (let i: u64 = 0; i < count; i++) {
      const position = this.liquidityTable.get(i);
      if (
        position &&
        position.pairId == pairId &&
        position.provider.N == provider.N
      ) {
        return position;
      }
    }

    return null;
  }

  // Transfer tokens FROM user TO AMM contract
  private transferFrom(
    tokenContract: Name,
    from: Name,
    to: Name,
    quantity: Asset,
    memo: string
  ): void {
    const transfer = new InlineAction<TokenTransfer>("transfer");

    const action = transfer.act(
      tokenContract,
      new PermissionLevel(from, Name.fromU64(0x3232EDA800000000))
    );

    const transferParams = new TokenTransfer(from, to, quantity, memo);

    action.send(transferParams);
  }

  private transfer(
    tokenContract: Name,
    from: Name,
    to: Name,
    quantity: Asset,
    memo: string
  ): void {
    const transfer = new InlineAction<TokenTransfer>("transfer");

    const action = transfer.act(
      tokenContract,
      new PermissionLevel(this.receiver, Name.fromU64(0x3232EDA800000000))
    );

    const transferParams = new TokenTransfer(from, to, quantity, memo);

    action.send(transferParams);
  }

  private createAsset(amount: u64, symbolCode: string, precision: u8): Asset {
    const symbol = new Symbol(symbolCode, precision);
    return new Asset(amount, symbol);
  }
}


class initializeAction implements _chain.Packer {
    constructor (
        public factoryContract: _chain.Name | null = null,
        public swapFee: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.factoryContract!);
        enc.packNumber<u32>(this.swapFee);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.factoryContract! = obj;
        }
        this.swapFee = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.factoryContract!.getSize();
        size += sizeof<u32>();
        return size;
    }
}

class addPairAction implements _chain.Packer {
    constructor (
        public token0: _chain.Name | null = null,
        public token1: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token0!);
        enc.pack(this.token1!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token0! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token1! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token0!.getSize();
        size += this.token1!.getSize();
        return size;
    }
}

class removePairAction implements _chain.Packer {
    constructor (
        public token0: _chain.Name | null = null,
        public token1: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token0!);
        enc.pack(this.token1!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token0! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token1! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token0!.getSize();
        size += this.token1!.getSize();
        return size;
    }
}

class addLiquidityAction implements _chain.Packer {
    constructor (
        public token0: _chain.Name | null = null,
        public token1: _chain.Name | null = null,
        public token0Contract: _chain.Name | null = null,
        public token1Contract: _chain.Name | null = null,
        public amount0Desired: u64 = 0,
        public amount1Desired: u64 = 0,
        public amount0Min: u64 = 0,
        public amount1Min: u64 = 0,
        public token0Symbol: string = "",
        public token1Symbol: string = "",
        public token0Precision: u8 = 0,
        public token1Precision: u8 = 0,
        public provider: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token0!);
        enc.pack(this.token1!);
        enc.pack(this.token0Contract!);
        enc.pack(this.token1Contract!);
        enc.packNumber<u64>(this.amount0Desired);
        enc.packNumber<u64>(this.amount1Desired);
        enc.packNumber<u64>(this.amount0Min);
        enc.packNumber<u64>(this.amount1Min);
        enc.packString(this.token0Symbol);
        enc.packString(this.token1Symbol);
        enc.packNumber<u8>(this.token0Precision);
        enc.packNumber<u8>(this.token1Precision);
        enc.pack(this.provider!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token0! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token1! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token0Contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token1Contract! = obj;
        }
        this.amount0Desired = dec.unpackNumber<u64>();
        this.amount1Desired = dec.unpackNumber<u64>();
        this.amount0Min = dec.unpackNumber<u64>();
        this.amount1Min = dec.unpackNumber<u64>();
        this.token0Symbol = dec.unpackString();
        this.token1Symbol = dec.unpackString();
        this.token0Precision = dec.unpackNumber<u8>();
        this.token1Precision = dec.unpackNumber<u8>();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.provider! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token0!.getSize();
        size += this.token1!.getSize();
        size += this.token0Contract!.getSize();
        size += this.token1Contract!.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.token0Symbol);
        size += _chain.Utils.calcPackedStringLength(this.token1Symbol);
        size += sizeof<u8>();
        size += sizeof<u8>();
        size += this.provider!.getSize();
        return size;
    }
}

class removeLiquidityAction implements _chain.Packer {
    constructor (
        public token0: _chain.Name | null = null,
        public token1: _chain.Name | null = null,
        public token0Contract: _chain.Name | null = null,
        public token1Contract: _chain.Name | null = null,
        public liquidity: u64 = 0,
        public amount0Min: u64 = 0,
        public amount1Min: u64 = 0,
        public token0Symbol: string = "",
        public token1Symbol: string = "",
        public token0Precision: u8 = 0,
        public token1Precision: u8 = 0,
        public provider: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token0!);
        enc.pack(this.token1!);
        enc.pack(this.token0Contract!);
        enc.pack(this.token1Contract!);
        enc.packNumber<u64>(this.liquidity);
        enc.packNumber<u64>(this.amount0Min);
        enc.packNumber<u64>(this.amount1Min);
        enc.packString(this.token0Symbol);
        enc.packString(this.token1Symbol);
        enc.packNumber<u8>(this.token0Precision);
        enc.packNumber<u8>(this.token1Precision);
        enc.pack(this.provider!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token0! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token1! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token0Contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token1Contract! = obj;
        }
        this.liquidity = dec.unpackNumber<u64>();
        this.amount0Min = dec.unpackNumber<u64>();
        this.amount1Min = dec.unpackNumber<u64>();
        this.token0Symbol = dec.unpackString();
        this.token1Symbol = dec.unpackString();
        this.token0Precision = dec.unpackNumber<u8>();
        this.token1Precision = dec.unpackNumber<u8>();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.provider! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token0!.getSize();
        size += this.token1!.getSize();
        size += this.token0Contract!.getSize();
        size += this.token1Contract!.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.token0Symbol);
        size += _chain.Utils.calcPackedStringLength(this.token1Symbol);
        size += sizeof<u8>();
        size += sizeof<u8>();
        size += this.provider!.getSize();
        return size;
    }
}

class swapAction implements _chain.Packer {
    constructor (
        public tokenIn: _chain.Name | null = null,
        public tokenOut: _chain.Name | null = null,
        public tokenInContract: _chain.Name | null = null,
        public tokenOutContract: _chain.Name | null = null,
        public amountIn: u64 = 0,
        public amountOutMin: u64 = 0,
        public tokenInSymbol: string = "",
        public tokenOutSymbol: string = "",
        public tokenInPrecision: u8 = 0,
        public tokenOutPrecision: u8 = 0,
        public to: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.tokenIn!);
        enc.pack(this.tokenOut!);
        enc.pack(this.tokenInContract!);
        enc.pack(this.tokenOutContract!);
        enc.packNumber<u64>(this.amountIn);
        enc.packNumber<u64>(this.amountOutMin);
        enc.packString(this.tokenInSymbol);
        enc.packString(this.tokenOutSymbol);
        enc.packNumber<u8>(this.tokenInPrecision);
        enc.packNumber<u8>(this.tokenOutPrecision);
        enc.pack(this.to!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenIn! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenOut! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenInContract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenOutContract! = obj;
        }
        this.amountIn = dec.unpackNumber<u64>();
        this.amountOutMin = dec.unpackNumber<u64>();
        this.tokenInSymbol = dec.unpackString();
        this.tokenOutSymbol = dec.unpackString();
        this.tokenInPrecision = dec.unpackNumber<u8>();
        this.tokenOutPrecision = dec.unpackNumber<u8>();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.to! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.tokenIn!.getSize();
        size += this.tokenOut!.getSize();
        size += this.tokenInContract!.getSize();
        size += this.tokenOutContract!.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.tokenInSymbol);
        size += _chain.Utils.calcPackedStringLength(this.tokenOutSymbol);
        size += sizeof<u8>();
        size += sizeof<u8>();
        size += this.to!.getSize();
        return size;
    }
}

class getReservesAction implements _chain.Packer {
    constructor (
        public token0: _chain.Name | null = null,
        public token1: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token0!);
        enc.pack(this.token1!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token0! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token1! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token0!.getSize();
        size += this.token1!.getSize();
        return size;
    }
}

class getAmountOutAction implements _chain.Packer {
    constructor (
        public tokenIn: _chain.Name | null = null,
        public tokenOut: _chain.Name | null = null,
        public amountIn: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.tokenIn!);
        enc.pack(this.tokenOut!);
        enc.packNumber<u64>(this.amountIn);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenIn! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenOut! = obj;
        }
        this.amountIn = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.tokenIn!.getSize();
        size += this.tokenOut!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

class getLiquidityAction implements _chain.Packer {
    constructor (
        public token0: _chain.Name | null = null,
        public token1: _chain.Name | null = null,
        public provider: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token0!);
        enc.pack(this.token1!);
        enc.pack(this.provider!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token0! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token1! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.provider! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token0!.getSize();
        size += this.token1!.getSize();
        size += this.provider!.getSize();
        return size;
    }
}

class setSwapFeeAction implements _chain.Packer {
    constructor (
        public newFee: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u32>(this.newFee);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.newFee = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u32>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new ammContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initializeAction();
            args.unpack(actionData);
            mycontract.initialize(args.factoryContract!,args.swapFee);
        }
		if (action == 0x3253533AE0000000) {//addpair
            const args = new addPairAction();
            args.unpack(actionData);
            mycontract.addPair(args.token0!,args.token1!);
        }
		if (action == 0xBAA54DAAA675C000) {//removepair
            const args = new removePairAction();
            args.unpack(actionData);
            mycontract.removePair(args.token0!,args.token1!);
        }
		if (action == 0x3253175B4E4BB3E0) {//addliquidity
            const args = new addLiquidityAction();
            args.unpack(actionData);
            mycontract.addLiquidity(args.token0!,args.token1!,args.token0Contract!,args.token1Contract!,args.amount0Desired,args.amount1Desired,args.amount0Min,args.amount1Min,args.token0Symbol,args.token1Symbol,args.token0Precision,args.token1Precision,args.provider!);
        }
		if (action == 0xBAA5175B4E4BB3E0) {//remliquidity
            const args = new removeLiquidityAction();
            args.unpack(actionData);
            mycontract.removeLiquidity(args.token0!,args.token1!,args.token0Contract!,args.token1Contract!,args.liquidity,args.amount0Min,args.amount1Min,args.token0Symbol,args.token1Symbol,args.token0Precision,args.token1Precision,args.provider!);
        }
		if (action == 0xC70D500000000000) {//swap
            const args = new swapAction();
            args.unpack(actionData);
            mycontract.swap(args.tokenIn!,args.tokenOut!,args.tokenInContract!,args.tokenOutContract!,args.amountIn,args.amountOutMin,args.tokenInSymbol,args.tokenOutSymbol,args.tokenInPrecision,args.tokenOutPrecision,args.to!);
        }
		if (action == 0x62B3756157DAB000) {//getreserves
            const args = new getReservesAction();
            args.unpack(actionData);
            mycontract.getReserves(args.token0!,args.token1!);
        }
		if (action == 0x62B2695353CD3590) {//getamountout
            const args = new getAmountOutAction();
            args.unpack(actionData);
            mycontract.getAmountOut(args.tokenIn!,args.tokenOut!,args.amountIn);
        }
		if (action == 0x62B3175B4E4BB3E0) {//getliquidity
            const args = new getLiquidityAction();
            args.unpack(actionData);
            mycontract.getLiquidity(args.token0!,args.token1!,args.provider!);
        }
		if (action == 0xC2B38E1AAB528000) {//setswapfee
            const args = new setSwapFeeAction();
            args.unpack(actionData);
            mycontract.setSwapFee(args.newFee);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
