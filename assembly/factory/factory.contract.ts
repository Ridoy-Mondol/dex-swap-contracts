import {
  check,
  Contract,
  EMPTY_NAME,
  Name,
  requireAuth,
  TableStore,
  currentTimeSec,
  ActionData,
  InlineAction,
  PermissionLevel,
} from "proton-tsc";
import { PairsTable, FeeSettingsTable, ConfigTable } from "./tables";

@packer
class AddPairParams extends ActionData {
  constructor(
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME
  ) {
    super();
  }
}
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
  createPair(tokenA: Name, tokenB: Name, creator: Name): void {
    requireAuth(creator);

    check(tokenA !== tokenB, "Factory: IDENTICAL_ADDRESSES");
    check(
      tokenA != EMPTY_NAME && tokenB != EMPTY_NAME,
      "Factory: ZERO_ADDRESS"
    );

    let token0: Name = tokenA;
    let token1: Name = tokenB;

    if (tokenA.N > tokenB.N) {
      token0 = tokenB;
      token1 = tokenA;
    }

    const existingPair = this.findPair(token0, token1);
    check(existingPair == 0, "Factory: PAIR_EXISTS");

    const newPair = new PairsTable(
      this.pairsTable.availablePrimaryKey,
      token0,
      token1,
      creator,
      currentTimeSec()
    );

    this.pairsTable.store(newPair, this.receiver);

    const config = this.configTable.requireGet(0, "Factory: CONFIG_NOT_FOUND");

    const addPair = new InlineAction<AddPairParams>("addpair");

    const action = addPair.act(
      config.ammContract,
      new PermissionLevel(this.receiver)
    );

    const params = new AddPairParams(token0, token1);

    action.send(params);
  }

  @action("getpair")
  getPair(tokenA: Name, tokenB: Name): u64 {
    let token0: Name = tokenA;
    let token1: Name = tokenB;

    if (tokenA.N > tokenB.N) {
      token0 = tokenB;
      token1 = tokenA;
    }

    return this.findPair(token0, token1);
  }

  @action("removepair")
  removePair(tokenA: Name, tokenB: Name): void {
    requireAuth(this.receiver);

    let token0: Name = tokenA;
    let token1: Name = tokenB;

    if (tokenA.N > tokenB.N) {
      token0 = tokenB;
      token1 = tokenA;
    }

    const pairId = this.findPair(token0, token1);
    check(pairId != 0, "Factory: PAIR_NOT_FOUND");

    const pair = this.pairsTable.requireGet(pairId, "Factory: PAIR_NOT_FOUND");
    this.pairsTable.remove(pair);
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

    settings.feeTo = feeTo;
    this.feeSettingsTable.update(settings, this.receiver);
  }

  @action("setfeesetter")
  setFeeToSetter(newSetter: Name): void {
    check(newSetter != EMPTY_NAME, "Factory: ZERO_ADDRESS");

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

    return 0;
  }
}
