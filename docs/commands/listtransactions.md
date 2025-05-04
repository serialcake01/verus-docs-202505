# `listtransactions`

**Summary:**
Returns up to a specified number of the most recent transactions, skipping a specified number of transactions.

**Category:**
Wallet

---

## Description
The `listtransactions` command returns up to a specified number of the most recent transactions, skipping a specified number of transactions. This command is useful for retrieving transaction history for auditing or analysis purposes. The command supports filtering by account, though the account parameter is deprecated and should be set to "*".

---

## Usage
```bash
listtransactions ( ("account" | '{queryobject}' count from includeWatchonly)
```

---

## Arguments
| Name             | Type    | Required | Description                                                                 |
|------------------|---------|----------|-----------------------------------------------------------------------------|
| account          | string  | No       | DEPRECATED. The account name. Should be "*".                                |
| count            | numeric | No       | The number of transactions to return. Default is 10.                        |
| from             | numeric | No       | The number of transactions to skip. Default is 0.                           |
| includeWatchonly | bool    | No       | Include transactions to watchonly addresses. Default is false.              |

---

## Result
Returns an array of JSON objects, each containing:
- `account`: (string) DEPRECATED. The account name associated with the transaction.
- `address`: (string) The VRSC address of the transaction.
- `category`: (string) The transaction category ('send', 'receive', 'move').
- `amount`: (numeric) The amount in VRSC.
- `vout`: (numeric) The vout value.
- `fee`: (numeric) The amount of the fee in VRSC.
- `confirmations`: (numeric) The number of confirmations for the transaction.
- `blockhash`: (string) The block hash containing the transaction.
- `blockindex`: (numeric) The block index containing the transaction.
- `txid`: (string) The transaction ID.
- `time`: (numeric) The transaction time in seconds since epoch.
- `timereceived`: (numeric) The time received in seconds since epoch.
- `comment`: (string) If a comment is associated with the transaction.
- `otheraccount`: (string) For 'move' transactions, the account the funds came from or went to.
- `size`: (numeric) Transaction size in bytes.

---

## Examples
```bash
# List the most recent 10 transactions
verus listtransactions

# List transactions 100 to 120
verus listtransactions "*" 20 100

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listtransactions", "params": ["*", 20, 100] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- The `account` parameter is deprecated and should be set to "*".

---

## Related Commands
- [`listunspent`](./listunspent.md): Returns an array of unspent transaction outputs with specified confirmations. 