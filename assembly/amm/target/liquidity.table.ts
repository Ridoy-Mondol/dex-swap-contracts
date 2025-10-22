import * as _chain from "as-chain";
import { EMPTY_NAME, Name, Table, U128 } from "proton-tsc";



export class LiquidityTableDB extends _chain.MultiIndex<LiquidityTable> {

}

@table("liquidity", nocodegen)

export class LiquidityTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public pairId: u64 = 0,
    public provider: Name = EMPTY_NAME,
    public liquidity: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

  // @secondary
  // get bypair(): u64 {
  //   return this.pairId;
  // }

  // @secondary
  // get byprovider(): u64 {
  //   return this.provider.N;
  // }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.packNumber<u64>(this.pairId);
        enc.pack(this.provider);
        enc.packNumber<u64>(this.liquidity);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        this.pairId = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.provider = obj;
        }
        this.liquidity = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.provider.getSize();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x8BADA725D9F00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
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
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): LiquidityTableDB {
        return new LiquidityTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
