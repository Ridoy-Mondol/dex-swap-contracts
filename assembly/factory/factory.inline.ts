import { ActionData, Name, EMPTY_NAME } from "proton-tsc";

@packer
export class AddPairParams extends ActionData {
  constructor(
    public token0: Name = EMPTY_NAME,
    public token1: Name = EMPTY_NAME
  ) {
    super();
  }
}
