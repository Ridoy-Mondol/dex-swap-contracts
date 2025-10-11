import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("config")
export class ConfigTable extends Table {
  constructor(
    public id: u64 = 0, 
    public ammContract: Name = EMPTY_NAME
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }
}
