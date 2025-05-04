# `z_exportwallet`

**Summary:**
Exports all wallet keys, for taddr and zaddr, in a human-readable format for backup or migration. Essential for secure wallet management and disaster recovery.

**Category:**
Wallet

---

## Description
`z_exportwallet` allows you to export all t-address and z-address keys from your wallet to a file, enabling secure backup, migration, or disaster recovery. The file is saved in the directory specified by the `-exportdir` option. Overwriting an existing file is not permitted. You can optionally export only addresses with indexed UTXOs or that control IDs in the wallet.

---

## Usage
```bash
verus z_exportwallet "filename" [omitemptytaddresses]
```
- `filename`: The name of the export file (string, required)
- `omitemptytaddresses`: Export only addresses with indexed UTXOs or IDs (bool, optional, default=false)

---

## Arguments
| Name                | Type    | Required | Description                                         |
|---------------------|---------|----------|-----------------------------------------------------|
| filename            | string  | Yes      | The filename, saved in the folder set by `-exportdir`|
| omitemptytaddresses | bool    | No       | Export only addresses with indexed UTXOs or IDs (default: false) |

---

## Result
Returns the full path of the destination file (string).

---

## Examples
```bash
verus z_exportwallet "test"
```

---

## Notes
- Overwriting an existing file is not permitted.
- Use for secure backup, migration, or disaster recovery.
- Optionally export only addresses with indexed UTXOs or IDs.

---

## Related Commands
- [`z_importwallet`](./z_importwallet.md): Import all wallet keys from a file.
- [`importwallet`](./importwallet.md): Import t-address keys from a standard wallet file. 