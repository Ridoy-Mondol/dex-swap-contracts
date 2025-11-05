import * as _chain from "as-chain";
import { EMPTY_NAME, Name, Table } from "proton-tsc";



export class LiquidityTableDB extends _chain.MultiIndex<LiquidityTable> {
    get byproviderDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }
    get bypoolDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }

    
    updateByprovider(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBypool(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("liquidity", nocodegen)

export class LiquidityTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public pool_id: u64 = 0,
    public provider: Name = EMPTY_NAME,
    public lp_balance: u64 = 0,
    public token0_contributed: u64 = 0,
    public token1_contributed: u64 = 0,
    public updated_at: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

  @secondary
  get byprovider(): u64 {
    return this.provider.N;
  }

  set byprovider(value: u64) {
    this.provider.N = value;
  }

  @secondary
  get bypool(): u64 {
    return this.pool_id;
  }

  set bypool(value: u64) {
    this.pool_id = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.packNumber<u64>(this.pool_id);
        enc.pack(this.provider);
        enc.packNumber<u64>(this.lp_balance);
        enc.packNumber<u64>(this.token0_contributed);
        enc.packNumber<u64>(this.token1_contributed);
        enc.packNumber<u64>(this.updated_at);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        this.pool_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.provider = obj;
        }
        this.lp_balance = dec.unpackNumber<u64>();
        this.token0_contributed = dec.unpackNumber<u64>();
        this.token1_contributed = dec.unpackNumber<u64>();
        this.updated_at = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.provider.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x8BADA725D9F00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 1, 1),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return LiquidityTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return LiquidityTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.byprovider);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.bypool);
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
                return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
        }
    }

    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        switch (i) {
            case 0: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byprovider = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bypool = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): LiquidityTableDB {
        return new LiquidityTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
