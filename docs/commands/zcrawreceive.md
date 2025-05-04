# `zcrawreceive`

**Summary:**
Receives raw transaction data for a specified transaction ID.

**Category:**
Raw Transactions

---

## Description
The `zcrawreceive` command is used to receive raw transaction data for a specified transaction ID. This command is useful for advanced transaction analysis and auditing purposes.

---

## Usage
```bash
zcrawreceive "txid"
```

---

## Arguments
| Name | Type   | Required | Description                                      |
|------|--------|----------|--------------------------------------------------|
| txid | string | Yes      | The transaction ID for which to receive data.    |

---

## Result
Returns the raw transaction data as a hex-encoded string.

---

## Examples
```bash
# Receive raw transaction data for a given txid
verus zcrawreceive "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"
```

---

## Notes
- This command is intended for advanced users who need to analyze raw transaction data.

---

## Related Commands
- [`getrawtransaction`](./getrawtransaction.md): Get the raw transaction data for a given transaction ID. 