import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("pairinfo")
export class PairInfo extends Table {
  constructor(
    public pairId: u64 = 0,
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME,
    public token0Contract: Name = EMPTY_NAME,
    public token1Contract: Name = EMPTY_NAME,
    public token0Symbol: string = "",
    public token1Symbol: string = "",
    public token0Precision: u8 = 0,
    public token1Precision: u8 = 0
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.pairId;
  }
}
