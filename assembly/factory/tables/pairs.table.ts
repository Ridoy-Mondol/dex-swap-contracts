import { Table, Name, EMPTY_NAME } from "proton-tsc";

@table("pairs")
export class PairsTable extends Table {
  constructor(
    public id: u64 = 0,
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME,
    public creator: Name = EMPTY_NAME,
    public createdAt: u32 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

  @secondary
  get byToken0(): u64 {
    return this.token0.N;
  }

  set byToken0(value: u64) {
    this.token0 = Name.fromU64(value);
  }

  @secondary
  get byToken1(): u64 {
    return this.token1.N;
  }

  set byToken1(value: u64) {
    this.token1 = Name.fromU64(value);
  }
}
