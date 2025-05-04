# `z_importwallet`

**Summary:**
Imports t-address and z-address keys from a wallet export file, restoring access to funds and addresses. Essential for wallet backup and recovery.

**Category:**
Wallet

---

## Description
`z_importwallet` allows you to import all t-address and z-address keys from a previously exported wallet file (created with `z_exportwallet`). This command is critical for restoring wallet access, migrating wallets, or recovering from backup. Imported keys will be available for use after rescanning the blockchain.

---

## Usage
```bash
verus z_importwallet "filename"
```
- `filename`: Path to the wallet export file (string, required)

---

## Arguments
| Name      | Type    | Required | Description                                 |
|-----------|---------|----------|---------------------------------------------|
| filename  | string  | Yes      | Path to the wallet export file              |

---

## Result
No direct result; keys are imported into the wallet. A rescan may be required to detect all transactions associated with the imported keys.

---

## Examples
```bash
verus z_exportwallet "nameofbackup"
verus z_importwallet "path/to/exportdir/nameofbackup"
```

---

## Notes
- Use `z_exportwallet` to create a compatible export file.
- After import, a blockchain rescan may be necessary to detect all funds.
- Both t-address and z-address keys are imported.
- Essential for wallet backup, migration, and disaster recovery.

---

## Related Commands
- [`z_exportwallet`](./z_exportwallet.md): Export all wallet keys to a file.
- [`importwallet`](./importwallet.md): Import t-address keys from a standard wallet file. 