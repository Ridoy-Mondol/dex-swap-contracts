import * as _chain from "as-chain";
import { EMPTY_NAME, Name, Table } from "proton-tsc";



export class SwapsTableDB extends _chain.MultiIndex<SwapsTable> {
    get bypoolDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }
    get bytimeDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }

    
    updateBypool(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBytime(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("swaps", nocodegen)

export class SwapsTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public pool_id: u64 = 0,
    public trader: Name = EMPTY_NAME,
    public token_in: Name = EMPTY_NAME,
    public token_out: Name = EMPTY_NAME,
    public amount_in: u64 = 0,
    public amount_out: u64 = 0,
    public fee_paid: u64 = 0,
    public timestamp: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

  @secondary
  get bypool(): u64 {
    return this.pool_id;
  }

  set bypool(value: u64) {
    this.pool_id = value;
  }

  @secondary
  get bytime(): u64 {
    return this.timestamp;
  }

  set bytime(value: u64) {
    this.timestamp = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.packNumber<u64>(this.pool_id);
        enc.pack(this.trader);
        enc.pack(this.token_in);
        enc.pack(this.token_out);
        enc.packNumber<u64>(this.amount_in);
        enc.packNumber<u64>(this.amount_out);
        enc.packNumber<u64>(this.fee_paid);
        enc.packNumber<u64>(this.timestamp);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        this.pool_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.trader = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token_in = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token_out = obj;
        }
        this.amount_in = dec.unpackNumber<u64>();
        this.amount_out = dec.unpackNumber<u64>();
        this.fee_paid = dec.unpackNumber<u64>();
        this.timestamp = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.trader.getSize();
        size += this.token_in.getSize();
        size += this.token_out.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC70D5C0000000000);
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
        return SwapsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return SwapsTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.bypool);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.bytime);
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
                this.bypool = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bytime = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): SwapsTableDB {
        return new SwapsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
