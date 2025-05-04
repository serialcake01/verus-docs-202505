# `prunespentwallettransactions`

**Summary:**
The `prunespentwallettransactions` command removes all spent transactions from the wallet, with an option to keep a specific transaction.

**Category:**
Wallet

---

## Description
This command is used to clean up the wallet by removing transactions that have been spent. It is recommended to back up the `wallet.dat` file before running this command.

---

## Usage
```bash
prunespentwallettransactions "txid"
```

---

## Arguments
| Name | Type   | Required | Description                                      |
|------|--------|----------|--------------------------------------------------|
| txid | string | No       | The transaction ID to keep.                      |

---

## Result
Returns an object with the following fields:
- `total_transactions`: (numeric) Total transactions in the wallet.
- `remaining_transactions`: (numeric) Transactions remaining after pruning.
- `removed_transactions`: (numeric) Number of transactions removed.

---

## Examples
```bash
# Remove all spent transactions
verus prunespentwallettransactions

# Remove all spent transactions except the specified one
verus prunespentwallettransactions "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "prunespentwallettransactions", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Backup your `wallet.dat` before running this command.

---

## Related Commands
- None. 