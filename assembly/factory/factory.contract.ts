import {
  check,
  Contract,
  EMPTY_NAME,
  Name,
  requireAuth,
  TableStore,
} from "proton-tsc";
import { PairsTable, FeeSettingsTable } from "./tables";

@contract
export class Factory extends Contract {
  private pairsTable: TableStore<PairsTable> = new TableStore<PairsTable>(
    this.receiver,
    this.receiver
  );

  private feeSettingsTable: TableStore<FeeSettingsTable> =
    new TableStore<FeeSettingsTable>(this.receiver, this.receiver);

  // ============================================
  // INITIALIZATION
  // ============================================

  @action("init")
  initialize(feeToSetter: Name): void {
    requireAuth(this.receiver);

    const existing = this.feeSettingsTable.get(0);
    check(!existing, "Factory: ALREADY_INITIALIZED");

    const settings = new FeeSettingsTable(0, EMPTY_NAME, feeToSetter);

    this.feeSettingsTable.store(settings, this.receiver);
  }

  // ============================================
  // PAIR MANAGEMENT
  // ============================================

  @action("createpair")
  createPair(tokenA: Name, tokenB: Name, pairAccount: Name): void {
    check(tokenA !== tokenB, "Factory: IDENTICAL_ADDRESSES");
    check(
      tokenA != EMPTY_NAME && tokenB != EMPTY_NAME,
      "Factory: ZERO_ADDRESS"
    );
    check(pairAccount != EMPTY_NAME, "Factory: INVALID_PAIR_ACCOUNT");

    let token0: Name = tokenA;
    let token1: Name = tokenB;

    if (tokenA.N > tokenB.N) {
      token0 = tokenB;
      token1 = tokenA;
    }

    const existingPair = this.findPair(token0, token1);
    check(existingPair == EMPTY_NAME, "Factory: PAIR_EXISTS");

    const newPair = new PairsTable(
      this.pairsTable.availablePrimaryKey,
      token0,
      token1,
      pairAccount
    );

    this.pairsTable.store(newPair, this.receiver);
  }

  @action("getpair")
  getPair(tokenA: Name, tokenB: Name): Name {
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

    const pairAccount = this.findPair(token0, token1);
    check(pairAccount != EMPTY_NAME, "Factory: PAIR_NOT_FOUND");

    const pair = this.pairsTable.getBySecondaryU64(pairAccount.N, 2);
    if (pair) {
      this.pairsTable.remove(pair);
    } else {
      check(false, "Factory: PAIR_NOT_FOUND");
    }
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

  // ============================================
  // INTERNAL HELPERS
  // ============================================
  private findPair(token0: Name, token1: Name): Name {
    const pairCount = this.pairsTable.availablePrimaryKey;
    for (let i: u64 = 0; i < pairCount; i++) {
      const pair = this.pairsTable.get(i);
      if (pair && pair.token0.N == token0.N && pair.token1.N == token1.N) {
        return pair.pairAccount;
      }
    }

    return EMPTY_NAME;
  }
}
