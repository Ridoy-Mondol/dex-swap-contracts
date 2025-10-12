import * as _chain from "as-chain";
import { Table, Name, EMPTY_NAME } from "proton-tsc";



export class PairsTableDB extends _chain.MultiIndex<PairsTable> {
    get byToken0DB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }
    get byToken1DB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }

    
    updateByToken0(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateByToken1(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("pairs", nocodegen)

export class PairsTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME,
    public creator: Name = EMPTY_NAME,
    public createdAt: u32 = 0
  ) {
    
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

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.pack(this.token0);
        enc.pack(this.token1);
        enc.pack(this.creator);
        enc.packNumber<u32>(this.createdAt);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token0 = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token1 = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.creator = obj;
        }
        this.createdAt = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.token0.getSize();
        size += this.token1.getSize();
        size += this.creator.getSize();
        size += sizeof<u32>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA99D7C0000000000);
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
        return PairsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return PairsTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.byToken0);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.byToken1);
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
                this.byToken0 = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byToken1 = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): PairsTableDB {
        return new PairsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
