# `z_listreceivedbyaddress`

**Summary:**
Returns a list of amounts received by a specified shielded address (z-addr) in the wallet, including transaction details and memos. Useful for auditing and privacy management.

**Category:**
Wallet

---

## Description
`z_listreceivedbyaddress` provides a detailed list of all notes received by a given shielded address (Sprout or Sapling) in your wallet. This command is essential for users who need to audit incoming shielded transactions, review memos, or verify received funds for privacy-preserving addresses.

---

## Usage
```bash
verus z_listreceivedbyaddress "address" [minconf]
```
- `address`: The shielded address (string, required)
- `minconf`: Minimum confirmations (numeric, optional, default=1)

---

## Arguments
| Name      | Type    | Required | Description                                      |
|-----------|---------|----------|--------------------------------------------------|
| address   | string  | Yes      | The shielded address (z-addr)                    |
| minconf   | number  | No       | Minimum confirmations to include (default: 1)    |

---

## Result
Returns an array of objects, each representing a received note:
```
{
  "txid": "...",
  "amount": xxxxx,
  "memo": "...",
  "jsindex": n,        // Sprout only
  "jsoutindex": n,     // Sprout only
  "outindex": n,       // Sapling only
  "confirmations": n,
  "change": true|false
}
```

---

## Examples
```bash
verus z_listreceivedbyaddress "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"
```

---

## Notes
- Supports both Sprout and Sapling shielded addresses.
- Useful for auditing, privacy management, and reviewing memos.
- Only notes received by the specified address are listed.

---

## Related Commands
- [`z_listunspent`](./z_listunspent.md): List all unspent shielded notes in the wallet.
- [`z_listaddresses`](./z_listaddresses.md): List all shielded addresses in the wallet. 