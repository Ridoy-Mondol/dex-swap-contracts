import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("tokencache")
export class TokenCache extends Table {
  constructor(
    public tokenSymbol: string = "",
    public tokenContract: Name = EMPTY_NAME,
    public precision: u8 = 0
  ) {
    super();
  }

  @primary
  get primary(): string {
    return this.tokenSymbol;
  }
}
