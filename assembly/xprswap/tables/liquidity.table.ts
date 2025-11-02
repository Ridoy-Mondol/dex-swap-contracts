import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("liquidity")
export class LiquidityTable extends Table {
  constructor(
    public id: u64 = 0,
    public pool_id: u64 = 0,
    public provider: Name = EMPTY_NAME,
    public lp_balance: u64 = 0,
    public token0_contributed: u64 = 0,
    public token1_contributed: u64 = 0,
    public updated_at: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

  // @secondary
  // get byprovider(): u64 {
  //   return this.provider.N;
  // }

  // @secondary
  // get bypool(): u64 {
  //   return this.pool_id;
  // }
}
