import { Asset, EMPTY_NAME, Name, Table, TimePointSec, U128 } from "proton-tsc";

@table("fees")
export class FeesTable extends Table {
  constructor(
    public fee_id: u64 = 0,
    public pair_id: u64 = 0,
    public token_contract: Name = EMPTY_NAME,
    public total_collected: Asset = new Asset(),
    public maker_fees: Asset = new Asset(), // Fees from makers
    public taker_fees: Asset = new Asset(), // Fees from takers
    public last_updated: TimePointSec = new TimePointSec()
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.fee_id;
  }

  @secondary
  get by_pair_token(): U128 {
    const two32 = U128.fromU64(1 << 32);

    const high = U128.mul(U128.from(this.pair_id), two32);
    const highShifted = U128.mul(high, two32);

    const low = U128.from(this.total_collected.symbol.code());

    return U128.or(highShifted, low);
  }

  @secondary
  get by_pair(): u64 {
    return this.pair_id;
  }

  @secondary
  get by_token(): u64 {
    return this.total_collected.symbol.code();
  }
}
