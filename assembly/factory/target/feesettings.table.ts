import * as _chain from "as-chain";
import { EMPTY_NAME, Name, Table } from "proton-tsc";



export class FeeSettingsTableDB extends _chain.MultiIndex<FeeSettingsTable> {

}

@table("feesettings", nocodegen)

export class FeeSettingsTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,

    // Protocol fee recipient account. This account receives 0.05% of all trades as LP tokens
    public feeTo: Name = EMPTY_NAME,

    // Governance account - can change fee settings
    // This account has permission to:
    // 1. Enable/disable protocol fee (set feeTo)
    // 2. Transfer governance to new account (set feeToSetter)
    // Should be a DAO or multisig for security
    public feeToSetter: Name = EMPTY_NAME
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.pack(this.feeTo);
        enc.pack(this.feeToSetter);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.feeTo = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.feeToSetter = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.feeTo.getSize();
        size += this.feeToSetter.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x5A9585672E9B3000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return FeeSettingsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return FeeSettingsTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): FeeSettingsTableDB {
        return new FeeSettingsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
