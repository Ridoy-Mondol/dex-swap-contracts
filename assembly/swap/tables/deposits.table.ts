import { EMPTY_NAME, Name, Symbol, Table } from "proton-tsc";

@table("deposits")
export class DepositTable extends Table {
  constructor(
    public owner: Name = EMPTY_NAME,
    public token1_contract: Name = EMPTY_NAME,
    public token1_symbol: Symbol = new Symbol(),
    public token2_contract: Name = EMPTY_NAME,
    public token2_symbol: Symbol = new Symbol(),
    public token1_received: u64 = 0,
    public token2_received: u64 = 0,
    public prepared_at: u64 = 0,
    public expires_at: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.owner.N;
  }
}
