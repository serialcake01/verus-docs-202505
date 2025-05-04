# `z_getbalance`

**Summary:**
Returns the balance of a taddr or zaddr belonging to the node's wallet. Supports privacy-preserving fund management and auditing.

**Category:**
Wallet

---

## Description
`z_getbalance` provides the total amount of VRSC received by a specified address (t-addr or z-addr), filtered by minimum confirmations. This command is essential for users who need to audit individual address balances, manage privacy, or monitor wallet health. Note: If only a viewing key is present, spends cannot be detected and the balance may be overstated.

---

## Usage
```bash
verus z_getbalance "address" [minconf]
```
- `address`: The address to check (string, required)
- `minconf`: Minimum confirmations (numeric, optional, default=1)

---

## Arguments
| Name     | Type    | Required | Description                                         |
|----------|---------|----------|-----------------------------------------------------|
| address  | string  | Yes      | The address to check (t-addr or z-addr)             |
| minconf  | number  | No       | Only include transactions confirmed at least this many times (default: 1) |

---

## Result
Returns the total amount in VRSC received for the address (numeric).

---

## Examples
```bash
verus z_getbalance "myaddress"
verus z_getbalance "myaddress" 5
```

---

## Notes
- If only a viewing key is present, spends cannot be detected and the balance may be overstated.
- Supports both transparent and shielded addresses.

---

## Related Commands
- [`z_gettotalbalance`](./z_gettotalbalance.md): Get total wallet balances.
- [`getwalletinfo`](./getwalletinfo.md): Get general wallet information. 