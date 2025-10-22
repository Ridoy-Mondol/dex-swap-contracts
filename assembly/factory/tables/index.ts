export * from "./pairs.table";
export * from "./feesettings.table";
export * from "./config.table";
export * from "./stat.table";

/**
 * Table Usage Summary:
 *
 * 1. PairsTable:
 *    - Stores all trading pairs created
 *    - Multiple rows (one per pair)
 *    - Primary key: sequential id
 *    - Secondary indices: token0, token1, pairAccount
 *
 * 2. FeeSettingsTable:
 *    - Stores protocol fee configuration
 *    - SINGLE row only (id = 0)
 *    - Manages fee recipient and governance
 *
 * RAM Cost:
 * - PairsTable: ~64 bytes per pair
 * - FeeSettingsTable: ~48 bytes (total, singleton)
 *
 * For 100 pairs: ~6.4 KB + 48 bytes ≈ 6.5 KB
 * For 1000 pairs: ~64 KB + 48 bytes ≈ 64 KB
 */
