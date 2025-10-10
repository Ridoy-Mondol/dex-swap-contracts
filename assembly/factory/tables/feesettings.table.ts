import { EMPTY_NAME, Name, Table } from "proton-tsc";

@table("feesettings")
export class FeeSettingsTable extends Table {
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
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }
}
