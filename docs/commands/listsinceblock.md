# `listsinceblock`

**Summary:**
Get all transactions in blocks since a specified block hash, or all transactions if omitted.

**Category:**
Wallet

---

## Description
The `listsinceblock` command retrieves all transactions in blocks since a specified block hash, or all transactions if the block hash is omitted. This command is useful for tracking transaction history from a specific point in the blockchain. It supports filtering by the number of confirmations and includes an option to include watchonly addresses.

---

## Usage
```bash
listsinceblock ( "blockhash" target-confirmations includeWatchonly)
```

---

## Arguments
| Name               | Type    | Required | Description                                                                 |
|--------------------|---------|----------|-----------------------------------------------------------------------------|
| blockhash          | string  | No       | The block hash to list transactions since.                                  |
| target-confirmations | numeric | No       | The confirmations required, must be 1 or more.                              |
| includeWatchonly   | bool    | No       | Include transactions to watchonly addresses. Default is false.              |

---

## Result
Returns a JSON object containing:
- `transactions`: An array of transaction objects, each with details such as `account`, `address`, `category`, `amount`, `vout`, `fee`, `confirmations`, `blockhash`, `blockindex`, `blocktime`, `txid`, `time`, `timereceived`, `comment`, and `to`.
- `lastblock`: (string) The hash of the last block.

---

## Examples
```bash
# Get all transactions since a specific block
verus listsinceblock "000000000000000bacf66f7497b7dc45ef753ee9a7d38571037cdb1a57f663ad" 6

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listsinceblock", "params": ["000000000000000bacf66f7497b7dc45ef753ee9a7d38571037cdb1a57f663ad", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- The `account` field is deprecated.

---

## Related Commands
- [`listtransactions`](./listtransactions.md): Returns up to a specified number of the most recent transactions. 