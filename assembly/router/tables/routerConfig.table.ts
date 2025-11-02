import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("routerconfig")
export class RouterConfig extends Table {
  constructor(
    public id: u64 = 0,
    public factoryContract: Name = EMPTY_NAME,
    public ammContract: Name = EMPTY_NAME
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }
}
