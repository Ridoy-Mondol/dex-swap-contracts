import {
  check,
  Contract,
  EMPTY_NAME,
  Name,
  requireAuth,
  TableStore,
  currentTimeSec,
  U128,
  ActionData,
  InlineAction,
  PermissionLevel,
  Asset,
  Symbol,
} from "proton-tsc";
import { PairDataTable, LiquidityTable, AmmConfigTable } from "./tables";

@packer
export class TokenTransfer extends ActionData {
  constructor(
    public from: Name = new Name(),
    public to: Name = new Name(),
    public quantity: Asset = new Asset(),
    public memo: string = ""
  ) {
    super();
  }
}

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
      amount0Desired > 0 && amount1Desired > 0,
      "AMM: INSUFFICIENT_AMOUNTS"
    );

    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];

    const pairId = this.computePairId(t0, t1);
    const pair = this.pairDataTable.requireGet(pairId, "AMM: PAIR_NOT_FOUND");

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
        check(amount1Optimal >= amount1Min, "AMM: INSUFFICIENT_1_AMOUNT");
        amount0 = amount0Desired;
        amount1 = amount1Optimal;
      } else {
        const amount0Optimal = this.quote(
          amount1Desired,
          pair.reserve1,
          pair.reserve0
        );
        check(amount0Optimal <= amount0Desired, "AMM: INVALID_AMOUNTS");
        check(amount0Optimal >= amount0Min, "AMM: INSUFFICIENT_0_AMOUNT");
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
        "AMM: INSUFFICIENT_LIQUIDITY_MINTED"
      );
      liquidity -= this.MINIMUM_LIQUIDITY;
    } else {
      liquidity = this.min(
        (amount0 * pair.totalSupply) / pair.reserve0,
        (amount1 * pair.totalSupply) / pair.reserve1
      );
    }

    check(liquidity > 0, "AMM: INSUFFICIENT_LIQUIDITY_MINTED");

    // Transfer token0 from provider to AMM
    const asset0 = this.createAsset(amount0, token0Symbol, token0Precision);
    this.transferFrom(
      token0Contract,
      provider,
      this.receiver,
      asset0,
      "Add liquidity: token0"
    );

    // Transfer token1 from provider to AMM
    const asset1 = this.createAsset(amount1, token1Symbol, token1Precision);
    this.transferFrom(
      token1Contract,
      provider,
      this.receiver,
      asset1,
      "Add liquidity: token1"
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
      new PermissionLevel(from, Name.fromString("active"))
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
      new PermissionLevel(this.receiver, Name.fromString("active"))
    );

    const transferParams = new TokenTransfer(from, to, quantity, memo);

    action.send(transferParams);
  }

  private createAsset(amount: i64, symbolCode: string, precision: u8): Asset {
    const symbol = new Symbol(symbolCode, precision);
    return new Asset(amount, symbol);
  }
}
