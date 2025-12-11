import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("config")
export class ConfigTable extends Table {
  constructor(
    public id: u64 = 0,
    public paused: boolean = false,
    public min_liquidity: u64 = 1000,
    public admin: Name = EMPTY_NAME,
    public swap_fee: u32 = 30,
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.id;
  }
}
