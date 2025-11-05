import * as _chain from "as-chain";
import { EMPTY_NAME, Table, Name, Symbol, U128 } from "proton-tsc";



export class PoolsTableDB extends _chain.MultiIndex<PoolsTable> {

}

@table("pools", nocodegen)

export class PoolsTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME,
    public token0_contract: Name = EMPTY_NAME,
    public token1_contract: Name = EMPTY_NAME,
    public token0_symbol: Symbol = new Symbol(),
    public token1_symbol: Symbol = new Symbol(),
    public reserve0: u64 = 0,
    public reserve1: u64 = 0,
    public lp_supply: u64 = 0,
    public kLast: U128 = U128.from(0),
    public blockTimestampLast: u32 = 0,
    public created_at: u64 = 0,
    public price0CumulativeLast: U128 = U128.from(0),
    public price1CumulativeLast: U128 = U128.from(0),
    public creator: Name = EMPTY_NAME
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.pack(this.token0);
        enc.pack(this.token1);
        enc.pack(this.token0_contract);
        enc.pack(this.token1_contract);
        enc.pack(this.token0_symbol);
        enc.pack(this.token1_symbol);
        enc.packNumber<u64>(this.reserve0);
        enc.packNumber<u64>(this.reserve1);
        enc.packNumber<u64>(this.lp_supply);
        enc.pack(this.kLast);
        enc.packNumber<u32>(this.blockTimestampLast);
        enc.packNumber<u64>(this.created_at);
        enc.pack(this.price0CumulativeLast);
        enc.pack(this.price1CumulativeLast);
        enc.pack(this.creator);
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
            this.token0_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token1_contract = obj;
        }
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.token0_symbol = obj;
        }
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.token1_symbol = obj;
        }
        this.reserve0 = dec.unpackNumber<u64>();
        this.reserve1 = dec.unpackNumber<u64>();
        this.lp_supply = dec.unpackNumber<u64>();
        
        {
            let obj = new U128();
            dec.unpack(obj);
            this.kLast = obj;
        }
        this.blockTimestampLast = dec.unpackNumber<u32>();
        this.created_at = dec.unpackNumber<u64>();
        
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
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.creator = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.token0.getSize();
        size += this.token1.getSize();
        size += this.token0_contract.getSize();
        size += this.token1_contract.getSize();
        size += this.token0_symbol.getSize();
        size += this.token1_symbol.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.kLast.getSize();
        size += sizeof<u32>();
        size += sizeof<u64>();
        size += this.price0CumulativeLast.getSize();
        size += this.price1CumulativeLast.getSize();
        size += this.creator.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xAD291C0000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return PoolsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return PoolsTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): PoolsTableDB {
        return new PoolsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
