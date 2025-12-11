import { EMPTY_NAME, Table, Name, Symbol, U128 } from "proton-tsc";

@table("pools")
export class PoolsTable extends Table {
  constructor(
    public id: u64 = 0,
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME,
    public token0_contract: Name = EMPTY_NAME,
    public token1_contract: Name = EMPTY_NAME,
    public token0_symbol: Symbol = new Symbol(),
    public token1_symbol: Symbol = new Symbol(),
    public reserve0: u64 = 0,
    public reserve1: u64 = 0,
    public lp_supply: u64 = 0,
    public kLast: U128 = U128.from(0),
    public blockTimestampLast: u32 = 0,
    public created_at: u64 = 0,
    public price0CumulativeLast: U128 = U128.from(0),
    public price1CumulativeLast: U128 = U128.from(0),
    public creator: Name = EMPTY_NAME
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }
}
