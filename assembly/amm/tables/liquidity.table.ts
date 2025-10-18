import { EMPTY_NAME, Name, Table, U128 } from "proton-tsc";

@table("liquidity")
export class LiquidityTable extends Table {
  constructor(
    public id: u64 = 0,
    public pairId: u64 = 0,
    public provider: Name = EMPTY_NAME,
    public liquidity: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

  // @secondary
  // get bypair(): u64 {
  //   return this.pairId;
  // }

  // @secondary
  // get byprovider(): u64 {
  //   return this.provider.N;
  // }
}
