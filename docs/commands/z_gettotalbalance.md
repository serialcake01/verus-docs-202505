# `z_gettotalbalance`

**Summary:**
Returns the total value of funds stored in the node's wallet, including transparent and shielded balances. Supports privacy-preserving auditing and fund management.

**Category:**
Wallet

---

## Description
`z_gettotalbalance` provides a summary of all funds in your wallet, broken down by transparent and shielded balances. This command is essential for users who need to audit their holdings, manage privacy, or monitor wallet health. Note: If the wallet contains addresses for which only viewing keys are present, the private balance may be overstated, as spends cannot be detected.

---

## Usage
```bash
verus z_gettotalbalance [minconf] [includeWatchonly]
```
- `minconf`: Minimum confirmations (numeric, optional, default=1)
- `includeWatchonly`: Include watchonly addresses (bool, optional, default=false)

---

## Arguments
| Name             | Type    | Required | Description                                         |
|------------------|---------|----------|-----------------------------------------------------|
| minconf          | number  | No       | Only include transactions confirmed at least this many times (default: 1) |
| includeWatchonly | bool    | No       | Include balance in watchonly addresses (default: false) |

---

## Result
Returns an object:
```
{
  "transparent": xxxxx,     // Total transparent balance
  "private": xxxxx,         // Total shielded balance (Sprout and Sapling)
  "total": xxxxx            // Total of both transparent and shielded funds
}
```

---

## Examples
```bash
verus z_gettotalbalance
verus z_gettotalbalance 5
```

---

## Notes
- If only viewing keys are present for some addresses, private balance may be overstated.
- Useful for auditing, privacy management, and wallet health monitoring.

---

## Related Commands
- [`z_getbalance`](./z_getbalance.md): Get the balance for a specific address.
- [`getwalletinfo`](./getwalletinfo.md): Get general wallet information. 