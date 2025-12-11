import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("config")
export class ConfigTable extends Table {
  constructor(
    public id: u64 = 0,
    public admin: Name = EMPTY_NAME,
    public paused: bool = false,
    public min_maker_fee_bp: u16 = 0,
    public max_maker_fee_bp: u16 = 100,
    public min_taker_fee_bp: u16 = 0,
    public max_taker_fee_bp: u16 = 100,
    public fee_recipient: Name = EMPTY_NAME
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.id;
  }
}
