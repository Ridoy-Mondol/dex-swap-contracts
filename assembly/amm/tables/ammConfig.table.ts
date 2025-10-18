import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("ammconfig")
export class AmmConfigTable extends Table {
  constructor(
    public id: u64 = 0,
    public factoryContract: Name = EMPTY_NAME,
    public swapFee: u32 = 30
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }
}
