# `z_getmigrationstatus`

**Summary:**
Returns information about the status of the Sprout to Sapling migration, including amounts migrated, destination address, and transaction details. Supports privacy-preserving fund upgrades.

**Category:**
Wallet

---

## Description
`z_getmigrationstatus` provides detailed information about the migration of funds from legacy Sprout shielded addresses to modern Sapling addresses. This command is essential for users upgrading their privacy funds, auditing migration progress, and ensuring protocol compliance.

---

## Usage
```bash
verus z_getmigrationstatus
```

---

## Arguments
None.

---

## Result
Returns an object:
```
{
  "enabled": true|false,                    // Whether migration is enabled
  "destination_address": "zaddr",           // Sapling address receiving Sprout funds
  "unmigrated_amount": nnn.n,               // Total unmigrated VRSC
  "unfinalized_migrated_amount": nnn.n,     // Total unfinalized VRSC
  "finalized_migrated_amount": nnn.n,       // Total finalized VRSC
  "finalized_migration_transactions": nnn,  // Number of migration transactions
  "time_started": ttt,                      // Block time of first migration (Unix timestamp)
  "migration_txids": [txids]                // Array of migration txids
}
```

---

## Examples
```bash
verus z_getmigrationstatus
```

---

## Notes
- Migration is from Sprout to Sapling shielded addresses.
- Useful for auditing, compliance, and privacy upgrades.

---

## Related Commands
- [`z_setmigration`](./z_setmigration.md): Enable or disable Sprout-to-Sapling migration.
- [`z_gettotalbalance`](./z_gettotalbalance.md): Get total wallet balances. 