import { Asset, EMPTY_NAME, Name, Table, TimePointSec } from "proton-tsc";

@table("balances")
export class BalancesTable extends Table {
  constructor(
    public token_contract: Name = EMPTY_NAME,
    public balance: Asset = new Asset(),
    public locked: Asset = new Asset(),
    public updated_at: TimePointSec = new TimePointSec()
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.balance.symbol.code();
  }
}
