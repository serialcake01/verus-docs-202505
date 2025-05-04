# `z_exportkey`

**Summary:**
Reveals the zkey (spending key) for a specified shielded address (z-addr), enabling full control and recovery. Essential for secure wallet management and migration.

**Category:**
Wallet

---

## Description
`z_exportkey` allows you to export the spending key (zkey) for a Sprout or Sapling shielded address. This key can be imported into another wallet using `z_importkey` to enable full control over the associated address. Optionally, the key can be output as hex bytes. This command is essential for secure backup, migration, and disaster recovery.

---

## Usage
```bash
verus z_exportkey "zaddr" [outputashex]
```
- `zaddr`: The shielded address (string, required)
- `outputashex`: Output key data as hex bytes (bool, optional, default=false)

---

## Arguments
| Name         | Type    | Required | Description                                         |
|--------------|---------|----------|-----------------------------------------------------|
| zaddr        | string  | Yes      | The shielded address for which to export the key    |
| outputashex  | bool    | No       | Output key data as hex bytes (default: false)       |

---

## Result
Returns the spending key (string).

---

## Examples
```bash
verus z_exportkey "myaddress"
verus z_exportkey "myaddress" true
```

---

## Notes
- Spending keys enable full control over the associated address.
- Use for secure backup, migration, and disaster recovery.
- Handle exported keys with extreme care.

---

## Related Commands
- [`z_importkey`](./z_importkey.md): Import a spending key for a shielded address.
- [`z_listaddresses`](./z_listaddresses.md): List all shielded addresses in the wallet. 