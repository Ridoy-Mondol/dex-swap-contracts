import * as _chain from "as-chain";
import {
  check,
  Contract,
  EMPTY_NAME,
  Name,
  requireAuth,
  TableStore,
  currentTimeSec,
  InlineAction,
  PermissionLevel,
  isAccount,
} from "proton-tsc";
import {
  PairsTable,
  FeeSettingsTable,
  ConfigTable,
  TokenStatTable,
} from "./tables";
import { AddPairParams } from "./factory.inline";

@contract
export class Factory extends Contract {
  private pairsTable: TableStore<PairsTable> = new TableStore<PairsTable>(
    this.receiver,
    this.receiver
  );

  private feeSettingsTable: TableStore<FeeSettingsTable> =
    new TableStore<FeeSettingsTable>(this.receiver, this.receiver);

  private configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(
    this.receiver,
    this.receiver
  );

  // ============================================
  // INITIALIZATION
  // ============================================

  @action("init")
  initialize(ammContract: Name, feeToSetter: Name): void {
    requireAuth(this.receiver);

    check(ammContract != EMPTY_NAME, "Factory: INVALID_AMM_CONTRACT");
    check(feeToSetter != EMPTY_NAME, "Factory: INVALID_FEE_SETTER");

    const existing = this.feeSettingsTable.get(0);
    check(!existing, "Factory: ALREADY_INITIALIZED");

    const settings = new FeeSettingsTable(0, EMPTY_NAME, feeToSetter);
    this.feeSettingsTable.store(settings, this.receiver);

    const config = new ConfigTable(0, ammContract);
    this.configTable.store(config, this.receiver);
  }

  // ============================================
  // PAIR MANAGEMENT
  // ============================================

  @action("createpair")
  createPair(
    tokenA: Name,
    tokenB: Name,
    tokenAContract: Name,
    tokenBContract: Name,
    creator: Name
  ): void {
    requireAuth(creator);

    check(tokenA != tokenB, "Factory: IDENTICAL_ADDRESSES");
    check(
      tokenA != EMPTY_NAME && tokenB != EMPTY_NAME,
      "Factory: ZERO_ADDRESS"
    );
    check(tokenAContract != EMPTY_NAME, "Factory: INVALID_CONTRACT_A");
    check(tokenBContract != EMPTY_NAME, "Factory: INVALID_CONTRACT_B");

    check(isAccount(tokenAContract), "Factory: CONTRACT_A_NOT_FOUND");
    check(isAccount(tokenBContract), "Factory: CONTRACT_B_NOT_FOUND");

    this.verifyTokenExist(tokenAContract, tokenA);
    this.verifyTokenExist(tokenBContract, tokenB);

    let token0: Name = tokenA;
    let token1: Name = tokenB;

    if (tokenA.N > tokenB.N) {
      token0 = tokenB;
      token1 = tokenA;
    }

    const existingPair = this.findPair(token0, token1);
    check(existingPair == 0, "Factory: PAIR_EXISTS");

    const newPair = new PairsTable(
      this.pairsTable.availablePrimaryKey,
      token0,
      token1,
      creator,
      currentTimeSec()
    );

    this.pairsTable.store(newPair, this.receiver);

    const config = this.configTable.requireGet(0, "Factory: CONFIG_NOT_FOUND");

    const addPair = new InlineAction<AddPairParams>("addpair");

    const action = addPair.act(
      config.ammContract,
      new PermissionLevel(this.receiver)
    );

    const params = new AddPairParams(token0, token1);

    action.send(params);
  }

  @action("getpair")
  getPair(tokenA: Name, tokenB: Name): u64 {
    let token0: Name = tokenA;
    let token1: Name = tokenB;

    if (tokenA.N > tokenB.N) {
      token0 = tokenB;
      token1 = tokenA;
    }

    return this.findPair(token0, token1);
  }

  @action("removepair")
  removePair(tokenA: Name, tokenB: Name): void {
    requireAuth(this.receiver);

    let token0: Name = tokenA;
    let token1: Name = tokenB;

    if (tokenA.N > tokenB.N) {
      token0 = tokenB;
      token1 = tokenA;
    }

    const pairId = this.findPair(token0, token1);
    check(pairId != 0, "Factory: PAIR_NOT_FOUND");

    const pair = this.pairsTable.requireGet(pairId, "Factory: PAIR_NOT_FOUND");
    this.pairsTable.remove(pair);
  }

  /// ============================================
  // FEE MANAGEMENT
  // ============================================

  @action("setfeeto")
  setFeeTo(feeTo: Name): void {
    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );
    requireAuth(settings.feeToSetter);

    settings.feeTo = feeTo;
    this.feeSettingsTable.update(settings, this.receiver);
  }

  @action("setfeesetter")
  setFeeToSetter(newSetter: Name): void {
    check(newSetter != EMPTY_NAME, "Factory: ZERO_ADDRESS");

    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );

    // Only current feeToSetter can change
    requireAuth(settings.feeToSetter);

    settings.feeToSetter = newSetter;
    this.feeSettingsTable.update(settings, this.receiver);
  }

  @action("getfeeto")
  getFeeTo(): Name {
    const settings = this.feeSettingsTable.requireGet(
      0,
      "Factory: NOT_INITIALIZED"
    );

    return settings.feeTo;
  }

  /// ============================================
  // CONFIGURATION
  // ============================================

  @action("setamm")
  setAmmContract(ammContract: Name): void {
    requireAuth(this.receiver);

    let config = this.configTable.get(0);
    if (!config) {
      config = new ConfigTable(0, ammContract);
      this.configTable.store(config, this.receiver);
    } else {
      config.ammContract = ammContract;
      this.configTable.update(config, this.receiver);
    }
  }

  @action("getamm")
  getAmmContract(): Name {
    const config = this.configTable.requireGet(0, "Factory: CONFIG_NOT_FOUND");
    return config.ammContract;
  }

  // ============================================
  // INTERNAL HELPERS
  // ============================================
  private findPair(token0: Name, token1: Name): u64 {
    const pairCount = this.pairsTable.availablePrimaryKey;
    for (let i: u64 = 0; i < pairCount; i++) {
      const pair = this.pairsTable.get(i);
      if (pair && pair.token0.N == token0.N && pair.token1.N == token1.N) {
        return pair.id;
      }
    }

    return 0;
  }

  private verifyTokenExist(tokenContract: Name, tokenSymbol: Name): void {
    const statTable = new TableStore<TokenStatTable>(
      tokenContract,
      tokenSymbol
    );

    const stat = statTable.get(tokenSymbol.N);

    check(
      stat != null,
      `Factory: TOKEN ${tokenSymbol.toString()} NOT FOUND IN ${tokenContract.toString()}`
    );
  }
}


class initializeAction implements _chain.Packer {
    constructor (
        public ammContract: _chain.Name | null = null,
        public feeToSetter: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.ammContract!);
        enc.pack(this.feeToSetter!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.ammContract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.feeToSetter! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.ammContract!.getSize();
        size += this.feeToSetter!.getSize();
        return size;
    }
}

class createPairAction implements _chain.Packer {
    constructor (
        public tokenA: _chain.Name | null = null,
        public tokenB: _chain.Name | null = null,
        public tokenAContract: _chain.Name | null = null,
        public tokenBContract: _chain.Name | null = null,
        public creator: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.tokenA!);
        enc.pack(this.tokenB!);
        enc.pack(this.tokenAContract!);
        enc.pack(this.tokenBContract!);
        enc.pack(this.creator!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenA! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenB! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenAContract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenBContract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.creator! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.tokenA!.getSize();
        size += this.tokenB!.getSize();
        size += this.tokenAContract!.getSize();
        size += this.tokenBContract!.getSize();
        size += this.creator!.getSize();
        return size;
    }
}

class getPairAction implements _chain.Packer {
    constructor (
        public tokenA: _chain.Name | null = null,
        public tokenB: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.tokenA!);
        enc.pack(this.tokenB!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenA! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenB! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.tokenA!.getSize();
        size += this.tokenB!.getSize();
        return size;
    }
}

class removePairAction implements _chain.Packer {
    constructor (
        public tokenA: _chain.Name | null = null,
        public tokenB: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.tokenA!);
        enc.pack(this.tokenB!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenA! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.tokenB! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.tokenA!.getSize();
        size += this.tokenB!.getSize();
        return size;
    }
}

class setFeeToAction implements _chain.Packer {
    constructor (
        public feeTo: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.feeTo!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.feeTo! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.feeTo!.getSize();
        return size;
    }
}

class setFeeToSetterAction implements _chain.Packer {
    constructor (
        public newSetter: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.newSetter!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.newSetter! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.newSetter!.getSize();
        return size;
    }
}

class getFeeToAction implements _chain.Packer {
    constructor (
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        return size;
    }
}

class setAmmContractAction implements _chain.Packer {
    constructor (
        public ammContract: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.ammContract!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.ammContract! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.ammContract!.getSize();
        return size;
    }
}

class getAmmContractAction implements _chain.Packer {
    constructor (
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new Factory(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initializeAction();
            args.unpack(actionData);
            mycontract.initialize(args.ammContract!,args.feeToSetter!);
        }
		if (action == 0x45D46CAAA675C000) {//createpair
            const args = new createPairAction();
            args.unpack(actionData);
            mycontract.createPair(args.tokenA!,args.tokenB!,args.tokenAContract!,args.tokenBContract!,args.creator!);
        }
		if (action == 0x62B3533AE0000000) {//getpair
            const args = new getPairAction();
            args.unpack(actionData);
            const ret_value = mycontract.getPair(args.tokenA!,args.tokenB!);
            let size = 0;
            size += sizeof<u64>();
            const enc = new _chain.Encoder(size);
            enc.packNumber<u64>(ret_value);
            _chain.setActionReturnValue(enc.getBytes());
        }
		if (action == 0xBAA54DAAA675C000) {//removepair
            const args = new removePairAction();
            args.unpack(actionData);
            mycontract.removePair(args.tokenA!,args.tokenB!);
        }
		if (action == 0xC2B2B52B34000000) {//setfeeto
            const args = new setFeeToAction();
            args.unpack(actionData);
            mycontract.setFeeTo(args.feeTo!);
        }
		if (action == 0xC2B2B52B0ACE5570) {//setfeesetter
            const args = new setFeeToSetterAction();
            args.unpack(actionData);
            mycontract.setFeeToSetter(args.newSetter!);
        }
		if (action == 0x62B2B52B34000000) {//getfeeto
            const args = new getFeeToAction();
            args.unpack(actionData);
            const ret_value = mycontract.getFeeTo();
            let size = 0;
            size += ret_value.getSize();
            const enc = new _chain.Encoder(size);
            enc.pack(ret_value);
            _chain.setActionReturnValue(enc.getBytes());
        }
		if (action == 0xC2B2694800000000) {//setamm
            const args = new setAmmContractAction();
            args.unpack(actionData);
            mycontract.setAmmContract(args.ammContract!);
        }
		if (action == 0x62B2694800000000) {//getamm
            const args = new getAmmContractAction();
            args.unpack(actionData);
            const ret_value = mycontract.getAmmContract();
            let size = 0;
            size += ret_value.getSize();
            const enc = new _chain.Encoder(size);
            enc.pack(ret_value);
            _chain.setActionReturnValue(enc.getBytes());
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
