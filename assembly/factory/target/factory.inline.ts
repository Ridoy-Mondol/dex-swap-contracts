import * as _chain from "as-chain";
import { ActionData, Name, EMPTY_NAME } from "proton-tsc";


@packer(nocodegen)
export class InlinePairParams implements _chain.Packer {
    
  constructor(
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token0);
        enc.pack(this.token1);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
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
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token0.getSize();
        size += this.token1.getSize();
        return size;
    }
}