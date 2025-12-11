import * as _chain from "as-chain";
import { EMPTY_NAME, Name, Table } from "proton-tsc";



export class ConfigTableDB extends _chain.MultiIndex<ConfigTable> {

}

@table("config", nocodegen)

export class ConfigTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public paused: boolean = false,
    public min_liquidity: u64 = 1000,
    public admin: Name = EMPTY_NAME,
    public swap_fee: u32 = 30,
  ) {
    
  }

  @primary
  get Primary(): u64 {
    return this.id;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.packNumber<boolean>(this.paused);
        enc.packNumber<u64>(this.min_liquidity);
        enc.pack(this.admin);
        enc.packNumber<u32>(this.swap_fee);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        this.paused = dec.unpackNumber<boolean>();
        this.min_liquidity = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.admin = obj;
        }
        this.swap_fee = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<boolean>();
        size += sizeof<u64>();
        size += this.admin.getSize();
        size += sizeof<u32>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x4526B73000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ConfigTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ConfigTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.Primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ConfigTableDB {
        return new ConfigTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
