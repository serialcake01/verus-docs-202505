# `z_setmigration`

**Summary:**
Enables or disables the automatic migration of funds from legacy Sprout shielded addresses to Sapling shielded addresses, enhancing privacy and security in line with modern Verus protocol standards.

**Category:**
Wallet

---

## Description
`z_setmigration` controls the Sprout-to-Sapling migration process for your wallet. When enabled, the wallet will automatically migrate all funds from legacy Sprout addresses to a Sapling address (either account 0 or as specified by `-migrationdestaddress`). This process is designed to minimize information leakage and improve privacy, following the ZIP 308 protocol. Migration occurs in randomized batches at specific block intervals and may take several weeks for large balances.

---

## Usage
```bash
verus z_setmigration <enabled>
```
- `<enabled>`: `true` to enable migration, `false` to disable (boolean, required)

---

## Arguments
| Name    | Type    | Required | Description                                              |
|---------|---------|----------|----------------------------------------------------------|
| enabled | boolean | Yes      | Set to `true` to enable migration, `false` to disable.   |

---

## Result
No direct result is returned. The migration process will begin or stop based on the setting. Progress can be monitored via wallet logs and balance changes.

---

## Examples
```bash
# Enable Sprout-to-Sapling migration
verus z_setmigration true

# Disable Sprout-to-Sapling migration
verus z_setmigration false
```

---

## Notes
- Migration is designed to minimize information leakage and follows ZIP 308.
- For wallets with significant Sprout balances, migration may take several weeks.
- Migration sends up to 5 transactions at each block where height % 500 == 499.
- Transaction amounts are randomized for privacy.
- Migration ends when Sprout balance is below 0.01 VRSC.
- Destination address is Sapling account 0 or as set by `-migrationdestaddress`.
- This command is only relevant if your wallet contains legacy Sprout funds.

---

## Related Commands
- [`z_getmigrationstatus`](./z_getmigrationstatus.md): View the status of the Sprout-to-Sapling migration.
- [`z_getbalance`](./z_getbalance.md): Check shielded balances by address type. 