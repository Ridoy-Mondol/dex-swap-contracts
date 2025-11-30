import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("swaps")
export class SwapsTable extends Table {
  constructor(
    public id: u64 = 0,
    public pool_id: u64 = 0,
    public trader: Name = EMPTY_NAME,
    public token_in: Name = EMPTY_NAME,
    public token_out: Name = EMPTY_NAME,
    public amount_in: u64 = 0,
    public amount_out: u64 = 0,
    public fee_paid: u64 = 0,
    public timestamp: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

  @secondary
  get bypool(): u64 {
    return this.pool_id;
  }

  set bypool(value: u64) {
    this.pool_id = value;
  }

  @secondary
  get bytime(): u64 {
    return this.timestamp;
  }

  set bytime(value: u64) {
    this.timestamp = value;
  }
}
