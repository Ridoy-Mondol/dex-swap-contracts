import {
  check,
  Contract,
  EMPTY_NAME,
  Name,
  requireAuth,
  TableStore,
  currentTimeSec,
  InlineAction,
  PermissionLevel,
  isAccount,
} from "proton-tsc";
import {
  PairsTable,
  FeeSettingsTable,
  ConfigTable,
  TokenStatTable,
} from "./tables";
import { InlinePairParams } from "./factory.inline";

@contract
export class Factory extends Contract {
  private pairsTable: TableStore<PairsTable> = new TableStore<PairsTable>(
    this.receiver,
    this.receiver
  );

  private feeSettingsTable: TableStore<FeeSettingsTable> =
    new TableStore<FeeSettingsTable>(this.receiver, this.receiver);

  private configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(
    this.receiver,
    this.receiver
  );

  // ============================================
  // INITIALIZATION
  // ============================================

  @action("init")
  initialize(ammContract: Name, feeToSetter: Name): void {
    requireAuth(this.receiver);

    check(ammContract != EMPTY_NAME, "Factory: INVALID_AMM_CONTRACT");
    check(isAccount(ammContract), "Factory: AMM_CONTRACT_NOT_FOUND");
    check(feeToSetter != EMPTY_NAME, "Factory: INVALID_FEE_SETTER");

    const existing = this.feeSettingsTable.get(0);
    check(!existing, "Factory: ALREADY_INITIALIZED");

    const settings = new FeeSettingsTable(0, EMPTY_NAME, feeToSetter);
    this.feeSettingsTable.store(settings, this.receiver);

    const config = new ConfigTable(0, ammContract);
    this.configTable.store(config, this.receiver);
  }

  // ============================================
  // PAIR MANAGEMENT
  // ============================================

  @action("createpair")
  createPair(
    tokenA: string,
    tokenB: string,
    tokenAContract: Name,
    tokenBContract: Name,
    tokenAPrecision: u8,
    tokenBPrecision: u8,
    creator: Name
  ): void {
    requireAuth(creator);

    check(tokenA != tokenB, "Factory: IDENTICAL_ADDRESSES");
    check(tokenA.length > 0 && tokenB.length > 0, "Factory: ZERO_ADDRESS");
    check(tokenAContract != EMPTY_NAME, "Factory: INVALID_CONTRACT_A");
    check(tokenBContract != EMPTY_NAME, "Factory: INVALID_CONTRACT_B");

    check(isAccount(tokenAContract), "Factory: CONTRACT_A_NOT_FOUND");
    check(isAccount(tokenBContract), "Factory: CONTRACT_B_NOT_FOUND");

    this.verifyTokenExist(tokenAContract, tokenA, tokenAPrecision);
    this.verifyTokenExist(tokenBContract, tokenB, tokenBPrecision);

    const token0Name = Name.fromString(tokenA.toLowerCase());
    const token1Name = Name.fromString(tokenB.toLowerCase());

    let token0: Name = token0Name;
    let token1: Name = token1Name;

    if (token0Name.N > token1Name.N) {
      token0 = token1Name;
      token1 = token0Name;
    }

    const existingPair = this.findPair(token0, token1);
    check(existingPair == -1, "Factory: PAIR_EXISTS");

    const newPair = new PairsTable(
      this.pairsTable.availablePrimaryKey,
      token0,
      token1,
      creator,
      currentTimeSec()
    );

    this.pairsTable.store(newPair, this.receiver);

    const config = this.configTable.requireGet(0, "Factory: CONFIG_NOT_FOUND");

    const addPair = new InlineAction<InlinePairParams>("addpair");

    const action = addPair.act(
      config.ammContract,
      new PermissionLevel(this.receiver)
    );

    const params = new InlinePairParams(token0, token1);

    action.send(params);
  }

  @action("getpair")
  getPair(tokenA: string, tokenB: string): u64 {
    let token0Name = Name.fromString(tokenA.toLowerCase());
    let token1Name = Name.fromString(tokenB.toLowerCase());

    let token0: Name = token0Name;
    let token1: Name = token1Name;

    if (token0Name.N > token1Name.N) {
      token0 = token1Name;
      token1 = token0Name;
    }

    return this.findPair(token0, token1);
  }

  @action("removepair")
  removePair(tokenA: string, tokenB: string): void {
    requireAuth(this.receiver);

    const token0Name = Name.fromString(tokenA.toLowerCase());
    const token1Name = Name.fromString(tokenB.toLowerCase());

    let token0: Name = token0Name;
    let token1: Name = token1Name;

    if (token0Name.N > token1Name.N) {
      token0 = token1Name;
      token1 = token0Name;
    }

    const pairId = this.findPair(token0, token1);
    check(pairId != -1, "Factory: PAIR_NOT_FOUND");

    const pair = this.pairsTable.requireGet(pairId, "Factory: PAIR_NOT_FOUND");
    this.pairsTable.remove(pair);

    const config = this.configTable.requireGet(0, "Factory: CONFIG_NOT_FOUND");

    const removePairAction = new InlineAction<InlinePairParams>("removepair");
    const action = removePairAction.act(
      config.ammContract,
      new PermissionLevel(this.receiver)
    );
    const params = new InlinePairParams(token0, token1);
    action.send(params);
  }

  /// ============================================
  // FEE MANAGEMENT
  // ============================================

  @action("setfeeto")
  setFeeTo(feeTo: Name): void {
    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );
    requireAuth(settings.feeToSetter);
    check(isAccount(feeTo), "Factory: FEETO_ACCOUNT_NOT_EXIST");

    settings.feeTo = feeTo;
    this.feeSettingsTable.update(settings, this.receiver);
  }

  @action("setfeesetter")
  setFeeToSetter(newSetter: Name): void {
    check(newSetter != EMPTY_NAME, "Factory: ZERO_ADDRESS");
    check(isAccount(newSetter), "Factory: FEESETTER_ACCOUNT_NOT_EXIST");

    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );

    // Only current feeToSetter can change
    requireAuth(settings.feeToSetter);

    settings.feeToSetter = newSetter;
    this.feeSettingsTable.update(settings, this.receiver);
  }

  @action("getfeeto")
  getFeeTo(): Name {
    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );

    return settings.feeTo;
  }

  /// ============================================
  // CONFIGURATION
  // ============================================

  @action("setamm")
  setAmmContract(ammContract: Name): void {
    requireAuth(this.receiver);
    check(isAccount(ammContract), "Factory: AMM_CONTRACT_NOT_FOUND");

    let config = this.configTable.get(0);
    if (!config) {
      config = new ConfigTable(0, ammContract);
      this.configTable.store(config, this.receiver);
    } else {
      config.ammContract = ammContract;
      this.configTable.update(config, this.receiver);
    }
  }

  @action("getamm")
  getAmmContract(): Name {
    const config = this.configTable.requireGet(0, "Factory: CONFIG_NOT_FOUND");
    return config.ammContract;
  }

  /// ============================================
  // CLEAR TABLES
  // ============================================

  @action("clrpair")
  clearPair(): void {
    requireAuth(this.receiver);

    let cursor1 = this.pairsTable.first();
    while (cursor1 !== null) {
      let nextCursor = this.pairsTable.next(cursor1);
      this.pairsTable.remove(cursor1);
      cursor1 = nextCursor;
    }
  }

  // ============================================
  // INTERNAL HELPERS
  // ============================================
  private findPair(token0: Name, token1: Name): u64 {
    const pairCount = this.pairsTable.availablePrimaryKey;
    for (let i: u64 = 0; i < pairCount; i++) {
      const pair = this.pairsTable.get(i);
      if (pair && pair.token0.N == token0.N && pair.token1.N == token1.N) {
        return pair.id;
      }
    }

    return -1;
  }

  private verifyTokenExist(
    tokenContract: Name,
    tokenSymbol: string,
    precision: u8
  ): void {
    const symbolCode = this.calculateSymbolCode(tokenSymbol);

    const scopeName = Name.fromU64(symbolCode);

    const statTable = new TableStore<TokenStatTable>(tokenContract, scopeName);

    const stat = statTable.get(symbolCode);

    check(
      stat != null,
      `Factory: TOKEN ${tokenSymbol.toString()} NOT FOUND IN ${tokenContract.toString()}`
    );

    check(
      stat!.supply.symbol.precision() == precision,
      `Factory: WRONG PRECISION FOR ${tokenSymbol}`
    );
  }

  private calculateSymbolCode(symbolStr: string): u64 {
    let value: u64 = 0;

    for (let i = 0; i < symbolStr.length && i < 7; i++) {
      const char = symbolStr.charCodeAt(i);
      check(char >= 65 && char <= 90, "Factory: INVALID_SYMBOL_CHARACTER");
      value |= u64(char) << (8 * i);
    }

    return value;
  }
}
