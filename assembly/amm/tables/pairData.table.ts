import { EMPTY_NAME, Name, Table, U128 } from "proton-tsc";

@table("pairdata")
export class PairDataTable extends Table {
  constructor(
    public pairId: u64 = 0,
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME,
    public reserve0: u64 = 0,
    public reserve1: u64 = 0,
    public totalSupply: u64 = 0,
    public kLast: U128 = U128.from(0),
    public blockTimestampLast: u32 = 0,
    public price0CumulativeLast: U128 = U128.from(0),
    public price1CumulativeLast: U128 = U128.from(0)
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.pairId;
  }
}
