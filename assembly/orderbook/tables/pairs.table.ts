import { Asset, EMPTY_NAME, Name, Symbol, Table, TimePointSec } from "proton-tsc";

@table("pairs")
export class PairsTable extends Table {
  constructor(
    public pair_id: u64 = 0,
    public base_symbol: Symbol = new Symbol(),
    public base_contract: Name = EMPTY_NAME,
    public quote_symbol: Symbol = new Symbol(),
    public quote_contract: Name = EMPTY_NAME,
    public min_order_size: Asset = new Asset(),  // Min trade amount in base token
    public max_order_size: Asset = new Asset(),  // Max trade amount (prevent manipulation)
    public tick_size: Asset = new Asset(),
    public maker_fee_bp: u16 = 0,
    public taker_fee_bp: u16 = 0,
    public status: string = "",  // "active", "paused", "disabled"
    public created_at: TimePointSec = new TimePointSec(),
    public total_base_volume: Asset = new Asset(),
    public total_quote_volume: Asset = new Asset(),
    public last_price: Asset = new Asset()
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.pair_id;
  }

  @secondary
  get by_base_symbol(): u64 {
    return this.base_symbol.code();
  }

  @secondary
  get by_quote_symbol(): u64 {
    return this.quote_symbol.code();
  }

  @secondary
  get by_total_volume(): u64 {
    return this.total_base_volume.amount;
  }

  @secondary
  get by_last_price(): u64 {
    return this.last_price.amount;
  }
}
