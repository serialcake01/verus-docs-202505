# `gettransaction`

**Summary:**
Get detailed information about an in-wallet transaction.

**Category:**
Wallet

---

## Description
The `gettransaction` command retrieves detailed information about a specific in-wallet transaction identified by its transaction ID. This includes information about the transaction amount, confirmations, block details, and more. It can also include details about watchonly addresses if specified.

---

## Usage
```bash
gettransaction "txid" ( includeWatchonly )
```

---

## Arguments
| Name             | Type    | Required | Description                                                                 |
|------------------|---------|----------|-----------------------------------------------------------------------------|
| txid             | string  | Yes      | The transaction ID.                                                         |
| includeWatchonly | bool    | No       | Include watchonly addresses in balance calculation and details. Default is false. |

---

## Result
Returns a JSON object containing:
- `amount`: (numeric) The transaction amount in VRSC.
- `confirmations`: (numeric) The number of confirmations.
- `blockhash`: (string) The block hash.
- `blockindex`: (numeric) The block index.
- `blocktime`: (numeric) The time in seconds since epoch.
- `txid`: (string) The transaction ID.
- `time`: (numeric) The transaction time in seconds since epoch.
- `timereceived`: (numeric) The time received in seconds since epoch.
- `details`: An array of objects with transaction details such as `account`, `address`, `category`, `amount`, and `vout`.
- `vjoinsplit`: An array of objects with details about joinsplit transactions.
- `hex`: (string) Raw data for the transaction.

---

## Examples
```bash
# Get detailed information about a transaction
verus gettransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"

# Include watchonly addresses in the details
verus gettransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d" true

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettransaction", "params": ["1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/

# Example: Retrieve transaction details for auditing purposes
verus gettransaction "txid_example" --includeWatchonly

# Example: Use in a script to monitor transaction confirmations
while true; do
  verus gettransaction "txid_example" | grep 'confirmations'
  sleep 60
done
```

---

## Notes
- The `account` field in the `details` array indicates the account associated with the transaction.
- The `category` field in the `details` array indicates the type of transaction (send, receive, or generate).
- The `amount` field in the `details` array indicates the amount of VRSC sent or received in the transaction.
- The `vout` field in the `details` array indicates the output index of the transaction.
- The `vjoinsplit` array provides details about joinsplit transactions, which are used for privacy and fungibility in the Verus blockchain.
- The `hex` field contains the raw transaction data in hexadecimal format.