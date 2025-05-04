# `z_listaddresses`

**Summary:**
Returns the list of Sprout and Sapling shielded addresses belonging to the wallet, optionally including watchonly addresses. Useful for privacy management and auditing.

**Category:**
Wallet

---

## Description
`z_listaddresses` lists all shielded addresses (Sprout and Sapling) controlled by the wallet. Optionally, it can include watchonly addresses if viewing keys have been imported. This command is essential for users managing privacy-preserving funds and for advanced wallet operations.

---

## Usage
```bash
verus z_listaddresses [includeWatchonly]
```
- `includeWatchonly`: Include watchonly addresses (bool, optional, default=false)

---

## Arguments
| Name             | Type   | Required | Description                                         |
|------------------|--------|----------|-----------------------------------------------------|
| includeWatchonly | bool   | No       | Include watchonly addresses (default: false)         |

---

## Result
Returns an array of shielded addresses (strings):
```
[
  "zaddr",
  ...
]
```

---

## Examples
```bash
verus z_listaddresses
verus z_listaddresses true
```

---

## Notes
- Supports both Sprout and Sapling shielded addresses.
- Watchonly addresses require prior import of viewing keys.
- Useful for privacy management and wallet auditing.

---

## Related Commands
- [`z_listunspent`](./z_listunspent.md): List all unspent shielded notes in the wallet.
- [`z_listreceivedbyaddress`](./z_listreceivedbyaddress.md): List received notes for a shielded address. 