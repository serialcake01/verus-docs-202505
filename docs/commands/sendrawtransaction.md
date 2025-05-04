# `sendrawtransaction`

**Summary:**
Submits a raw transaction (serialized, hex-encoded) to the local node and network. Used to broadcast signed transactions.

**Category:**
Raw Transactions

---

## Description
`sendrawtransaction` broadcasts a signed, hex-encoded raw transaction to the Verus network. This command is essential for custom transaction workflows, protocol analysis, and advanced wallet operations.

---

## Usage
```bash
verus sendrawtransaction "hexstring" [allowhighfees]
```
- `hexstring`: The hex string of the raw transaction (string, required)
- `allowhighfees`: Allow high fees (bool, optional, default=false)

---

## Arguments
| Name          | Type    | Required | Description                                         |
|---------------|---------|----------|-----------------------------------------------------|
| hexstring     | string  | Yes      | The hex string of the raw transaction               |
| allowhighfees | bool    | No       | Allow high fees (default: false)                    |

---

## Result
Returns the transaction hash in hex (string).

---

## Examples
```bash
verus sendrawtransaction "signedhex"
```

---

## Notes
- Use after `signrawtransaction` to broadcast a signed transaction.
- Use with caution; high fees can be allowed if specified.

---

## Related Commands
- [`createrawtransaction`](./createrawtransaction.md): Create a raw transaction.
- [`signrawtransaction`](./signrawtransaction.md): Sign a raw transaction. 