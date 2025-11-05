import * as _chain from "as-chain";
import { EMPTY_NAME, Name, Symbol, Table } from "proton-tsc";



export class DepositTableDB extends _chain.MultiIndex<DepositTable> {

}

@table("deposits", nocodegen)

export class DepositTable implements _chain.MultiIndexValue {
    
  constructor(
    public owner: Name = EMPTY_NAME,
    public token1_contract: Name = EMPTY_NAME,
    public token1_symbol: Symbol = new Symbol(),
    public token2_contract: Name = EMPTY_NAME,
    public token2_symbol: Symbol = new Symbol(),
    public token1_received: u64 = 0,
    public token2_received: u64 = 0,
    public prepared_at: u64 = 0,
    public expires_at: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.owner.N;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.owner);
        enc.pack(this.token1_contract);
        enc.pack(this.token1_symbol);
        enc.pack(this.token2_contract);
        enc.pack(this.token2_symbol);
        enc.packNumber<u64>(this.token1_received);
        enc.packNumber<u64>(this.token2_received);
        enc.packNumber<u64>(this.prepared_at);
        enc.packNumber<u64>(this.expires_at);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.owner = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token1_contract = obj;
        }
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.token1_symbol = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token2_contract = obj;
        }
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.token2_symbol = obj;
        }
        this.token1_received = dec.unpackNumber<u64>();
        this.token2_received = dec.unpackNumber<u64>();
        this.prepared_at = dec.unpackNumber<u64>();
        this.expires_at = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.owner.getSize();
        size += this.token1_contract.getSize();
        size += this.token1_symbol.getSize();
        size += this.token2_contract.getSize();
        size += this.token2_symbol.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x4AAB4C3B38000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return DepositTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return DepositTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): DepositTableDB {
        return new DepositTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
