import * as _chain from "as-chain";
import { EMPTY_NAME, Name, Table, U128 } from "proton-tsc";



export class PairDataTableDB extends _chain.MultiIndex<PairDataTable> {

}

@table("pairdata", nocodegen)

export class PairDataTable implements _chain.MultiIndexValue {
    
  constructor(
    public pairId: u64 = 0,
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME,
    public reserve0: u64 = 0,
    public reserve1: u64 = 0,
    public totalSupply: u64 = 0,
    public kLast: U128 = U128.from(0),
    public blockTimestampLast: u32 = 0,
    public price0CumulativeLast: U128 = U128.from(0),
    public price1CumulativeLast: U128 = U128.from(0)
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.pairId;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.pairId);
        enc.pack(this.token0);
        enc.pack(this.token1);
        enc.packNumber<u64>(this.reserve0);
        enc.packNumber<u64>(this.reserve1);
        enc.packNumber<u64>(this.totalSupply);
        enc.pack(this.kLast);
        enc.packNumber<u32>(this.blockTimestampLast);
        enc.pack(this.price0CumulativeLast);
        enc.pack(this.price1CumulativeLast);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.pairId = dec.unpackNumber<u64>();
        
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
        this.reserve0 = dec.unpackNumber<u64>();
        this.reserve1 = dec.unpackNumber<u64>();
        this.totalSupply = dec.unpackNumber<u64>();
        
        {
            let obj = new U128();
            dec.unpack(obj);
            this.kLast = obj;
        }
        this.blockTimestampLast = dec.unpackNumber<u32>();
        
        {
            let obj = new U128();
            dec.unpack(obj);
            this.price0CumulativeLast = obj;
        }
        
        {
            let obj = new U128();
            dec.unpack(obj);
            this.price1CumulativeLast = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.token0.getSize();
        size += this.token1.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.kLast.getSize();
        size += sizeof<u32>();
        size += this.price0CumulativeLast.getSize();
        size += this.price1CumulativeLast.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA99D749B26000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return PairDataTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return PairDataTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): PairDataTableDB {
        return new PairDataTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
