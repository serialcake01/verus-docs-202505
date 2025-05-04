# `z_exportviewingkey`

**Summary:**
Reveals the viewing key for a specified shielded address (z-addr), enabling watch-only access and privacy-preserving auditing.

**Category:**
Wallet

---

## Description
`z_exportviewingkey` allows you to export the viewing key for a Sprout or Sapling shielded address. This key can be imported into another wallet using `z_importviewingkey` to enable watch-only access to incoming transactions for that address. This command is essential for privacy-preserving auditing, compliance, and watch-only workflows.

---

## Usage
```bash
verus z_exportviewingkey "zaddr"
```
- `zaddr`: The shielded address (string, required)

---

## Arguments
| Name   | Type    | Required | Description                                         |
|--------|---------|----------|-----------------------------------------------------|
| zaddr  | string  | Yes      | The shielded address for which to export the viewing key |

---

## Result
Returns the viewing key (string).

---

## Examples
```bash
verus z_exportviewingkey "myaddress"
```

---

## Notes
- Viewing keys enable watch-only access to incoming transactions.
- Use for privacy-preserving auditing and compliance.

---

## Related Commands
- [`z_importviewingkey`](./z_importviewingkey.md): Import a viewing key for a shielded address.
- [`z_listaddresses`](./z_listaddresses.md): List all shielded addresses in the wallet. 