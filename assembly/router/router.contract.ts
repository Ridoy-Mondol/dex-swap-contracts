import {
  check,
  Contract,
  currentTimeSec,
  EMPTY_NAME,
  isAccount,
  Name,
  requireAuth,
  TableStore,
} from "proton-tsc";
import { PairInfo, RouterConfig, TokenCache } from "./tables";

@contract
export class Router extends Contract {
  private pairInfoTable: TableStore<PairInfo> = new TableStore<PairInfo>(
    this.receiver,
    this.receiver
  );

  private configTable: TableStore<RouterConfig> = new TableStore<RouterConfig>(
    this.receiver,
    this.receiver
  );

  private tokenCacheTable: TableStore<TokenCache> = new TableStore<TokenCache>(
    this.receiver,
    this.receiver
  );

  // ============================================
  // INITIALIZATION
  // ============================================

  @action("init")
  initialize(factoryContract: Name, ammContract: Name): void {
    requireAuth(this.receiver);

    check(factoryContract != EMPTY_NAME, "Router: INVALID_FACTORY");
    check(ammContract != EMPTY_NAME, "Router: INVALID_AMM");

    check(isAccount(factoryContract), "Router: FACTORY_NOT_FOUND");
    check(isAccount(ammContract), "Router: AMM_NOT_FOUND");

    const existing = this.configTable.get(0);
    check(!existing, "Router: ALREADY_INITIALIZED");

    const config = new RouterConfig(0, factoryContract, ammContract);
    this.configTable.store(config, this.receiver);
  }

  // ============================================
  // ADD LIQUIDITY (Main User Action)
  // ============================================

  @action("addliquidity")
  addLiquidity(
    tokenA: string,
    tokenB: string,
    tokenAContract: Name,
    tokenBContract: Name,
    amountADesired: u64,
    amountBDesired: u64,
    amountAMin: u64,
    amountBMin: u64,
    tokenAPrecision: u8,
    tokenBPrecision: u8,
    to: Name,
    deadline: u32
  ): void {
    requireAuth(to);
    check(currentTimeSec() <= deadline, "Router: EXPIRED");

    const config = this.configTable.requireGet(0, "Router: NOT_INITIALIZED");

    const tokenAName: Name = Name.fromString(tokenA.toLowerCase());
    const tokenBName: Name = Name.fromString(tokenB.toLowerCase());

    let token0: Name;
    let token1: Name;
    let contract0: Name;
    let contract1: Name;
    let amount0Desired: u64;
    let amount1Desired: u64;
    let amount0Min: u64;
    let amount1Min: u64;
    let symbol0: string;
    let symbol1: string;
    let precision0: u8;
    let precision1: u8;

    if (tokenAName.N < tokenBName.N) {
      token0 = tokenAName;
      token1 = tokenBName;
      contract0 = tokenAContract;
      contract1 = tokenBContract;
      amount0Desired = amountADesired;
      amount1Desired = amountBDesired;
      amount0Min = amountAMin;
      amount1Min = amountBMin;
      symbol0 = tokenA;
      symbol1 = tokenB;
      precision0 = tokenAPrecision;
      precision1 = tokenBPrecision;
    }
    {
      token0 = tokenBName;
      token1 = tokenAName;
      contract0 = tokenBContract;
      contract1 = tokenAContract;
      amount0Desired = amountBDesired;
      amount1Desired = amountADesired;
      amount0Min = amountBMin;
      amount1Min = amountAMin;
      symbol0 = tokenB;
      symbol1 = tokenA;
      precision0 = tokenBPrecision;
      precision1 = tokenAPrecision;
    }

    const reserves = this.getReservesFromAmm(
      config.ammContract,
      token0,
      token1
    );

    let amount0: u64;
    let amount1: u64;

    if (reserves.reserve0 == 0 && reserves.reserve1 == 0) {
      amount0 = amount0Desired;
      amount1 = amount1Desired;
    } else {
      const amount1Optimal = this.quote(
        amount0Desired,
        reserves.reserve0,
        reserves.reserve1
      );

      if (amount1Optimal <= amount1Desired) {
        check(amount1Optimal >= amount1Min, "Router: INSUFFICIENT_B_AMOUNT");
        amount0 = amount0Desired;
        amount1 = amount1Optimal;
      } else {
        const amount0Optimal = this.quote(
          amount1Desired,
          reserves.reserve1,
          reserves.reserve0
        );
        check(amount0Optimal <= amount0Desired, "Router: EXCESSIVE_A_AMOUNT");
        check(amount0Optimal >= amount0Min, "Router: INSUFFICIENT_A_AMOUNT");
        amount0 = amount0Optimal;
        amount1 = amount1Desired;
      }
    }

    this.safeTransferFrom(
      contract0,
      to,
      config.ammContract,
      amount0,
      symbol0,
      precision0,
      "Router: Add liquidity"
    );

    this.safeTransferFrom(
      contract1,
      to,
      config.ammContract,
      amount1,
      symbol1,
      precision1,
      "Router: Add liquidity"
    );
  }
}
