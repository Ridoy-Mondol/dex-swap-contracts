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

  /**
   * Gets the pair account for two tokens
   * Returns EMPTY_NAME if pair doesn't exist
   *
   * @param tokenA - First token
   * @param tokenB - Second token
   */
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

  /**
   * Gets all pairs (paginated)
   *
   * @param limit - Maximum number of pairs to return
   * @param offset - Starting position
   */
  // @action("getallpairs")
  // getAllPairs(limit: u32, offset: u32): PairsTable[] {
  //   const pairs: PairsTable[] = [];
  //   const pairCount = this.pairsTable.availablePrimaryKey;

  //   const start = offset;
  //   const end = offset + limit > pairCount ? pairCount : offset + limit;

  //   for (let i = start; i < end; i++) {
  //     const pair = this.pairsTable.get(i);
  //     if (pair) {
  //       pairs.push(pair);
  //     }
  //   }

  //   return pairs;
  // }

  /**
   * Gets total number of pairs
   */
  // @action("paircount")
  // getPairCount(): u64 {
  //   return this.pairsTable.availablePrimaryKey;
  // }

  /**
   * Finds all pairs where the given token is token0
   */
  @action("getpairstoken0")
  getPairsByToken0(token: Name, limit: u32): PairsTable[] {
    const pairs: PairsTable[] = [];

    // Get secondary index for token0
    const idx = this.pairsTable.getIndex<u64>("byToken0");

    // Find first occurrence of this token
    const itr = idx.find(token.N);

    let count: u32 = 0;

    while (itr.isValid() && count < limit) {
      const pair = itr.getValue();

      if (pair.token0.N != token.N) {
        break;
      }

      pairs.push(pair);
      count++;
      itr.next();
    }

    // const pairCount = this.pairsTable.availablePrimaryKey;

    // let found: u32 = 0;
    // let skipped: u32 = 0;

    // for (let i: u64 = 0; i < pairCount && found < limit; i++) {
    //   const pair = this.pairsTable.get(i);

    //   if (pair && (pair.token0.N == token.N || pair.token1.N == token.N)) {
    //     if (skipped < offset) {
    //       skipped++;
    //       continue;
    //     }
    //     pairs.push(pair);
    //     found++;
    //   }
    // }

    return pairs;
  }

  /**
   * Finds all pairs where the given token is token1
   */

  @action("getpairstoken1")
  getPairsByToken1(token: Name, limit: u32): PairsTable[] {
    const pairs: PairsTable[] = [];

    // Get secondary index for token1
    const idx = this.pairsTable.getIndex<u64>("byToken1");

    // Find first occurrence
    const itr = idx.find(token.N);

    let count: u32 = 0;

    while (itr.isValid() && count < limit) {
      const pair = itr.getValue();

      if (pair.token1.N != token.N) {
        break;
      }

      pairs.push(pair);
      count++;
      itr.next();
    }

    return pairs;
  }

  @action("getpairsbytoken")
  getPairsByToken(token: Name, limit: u32): PairsTable[] {
    const pairs: PairsTable[] = [];
    let count: u32 = 0;

    // First, get pairs where token is token0 (using index)
    const idx0 = this.pairsTable.getIndex<u64>("byToken0");
    const itr0 = idx0.find(token.N);

    while (itr0.isValid() && count < limit) {
      const pair = itr0.getValue();

      if (pair.token0.N != token.N) {
        break;
      }

      pairs.push(pair);
      count++;
      itr0.next();
    }

    // Then, get pairs where token is token1 (using index)
    if (count < limit) {
      const idx1 = this.pairsTable.getIndex<u64>("byToken1");
      const itr1 = idx1.find(token.N);

      while (itr1.isValid() && count < limit) {
        const pair = itr1.getValue();

        if (pair.token1.N != token.N) {
          break;
        }

        pairs.push(pair);
        count++;
        itr1.next();
      }
    }

    return pairs;
  }

  /**
   * Removes a pair (admin only)
   * Only the factory contract itself can remove pairs
   *
   * @param tokenA - First token
   * @param tokenB - Second token
   */
  @action("removepair")
  removePair(tokenA: Name, tokenB: Name): void {
    requireAuth(this.receiver);

    let token0: Name = tokenA;
    let token1: Name = tokenB;

    if (tokenA.N > tokenB.N) {
      token0 = tokenB;
      token1 = tokenA;
    }

    // const pairCount = this.pairsTable.availablePrimaryKey;
    // for (let i = 0; i < pairCount; i++) {
    //   const pair = this.pairsTable.get(i);
    //   if (pair && pair.token0.N == token0.N && pair.token1.N == token1.N) {
    //     return this.pairsTable.remove(pair);
    //   }
    // }

    const pairAccount = this.findPairOptimized(token0, token1);
    check(pairAccount != EMPTY_NAME, "Factory: PAIR_NOT_FOUND");

    // Find the pair by pairAccount using secondary index
    const idx = this.pairsTable.getIndex<u64>("byPairAccount");
    const itr = idx.find(pairAccount.N);

    if (itr.isValid()) {
      const pair = itr.getValue();
      this.pairsTable.remove(pair);
    }

    check(false, "Factory: PAIR_NOT_FOUND");
  }

  /// ============================================
  // FEE MANAGEMENT
  // ============================================
  @action("getfees")
  getFeeSettings(): FeeSettingsTable {
    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );
    return settings;
  }

  /**
   * Sets the feeTo address (protocol fee recipient)
   * Only feeToSetter can call this
   *
   * @param feeTo - New fee recipient (EMPTY_NAME to disable)
   */
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

  /**
   * Changes the feeToSetter address
   * Only current feeToSetter can call this
   *
   * @param newSetter - New fee setter account
   */
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

  /**
   * Get current fee settings
   */
  @action("getfeeto")
  getFeeTo(): Name {
    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );
    return settings.feeTo;
  }

  @action("getfeesetter")
  getFeeToSetter(): Name {
    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );
    return settings.feeToSetter;
  }

  // ============================================
  // INTERNAL HELPERS
  // ============================================
  private findPairOptimized(token0: Name, token1: Name): Name {
    const idx = this.pairsTable.getIndex<u64>("byToken0");
    const itr = idx.find(token0.N);

    while (itr.isValid()) {
      const pair = itr.getValue();

      if (pair.token0.N != token0.N) {
        break;
      }

      if (pair.token1.N == token1.N) {
        return pair.pairAccount;
      }

      itr.next();
    }

    return EMPTY_NAME;
  }

  private findPair(token0: Name, token1: Name): Name {
    const pairCount = this.pairsTable.availablePrimaryKey;
    for (let i = 0; i < pairCount; i++) {
      const pair = this.pairsTable.get(i);
      if (pair && pair.token0.N == token0.N && pair.token1.N == token1.N) {
        return pair.pairAccount;
      }
    }

    return EMPTY_NAME;
  }
}
