# `getrawtransaction`

**Summary:**
Returns the raw transaction data for a given transaction ID, with optional verbose decoding. Supports advanced auditing, troubleshooting, and protocol analysis.

**Category:**
Raw Transactions, Blockchain

---

## Description
`getrawtransaction` retrieves the raw transaction data for a specified transaction ID. By default, it returns the serialized, hex-encoded transaction. If `verbose` is set, it returns a detailed JSON object with all transaction fields, including transparent and shielded join-split data. This command is essential for advanced auditing, troubleshooting, and protocol analysis.

---

## Usage
```bash
verus getrawtransaction "txid" [verbose]
```
- `txid`: The transaction ID (string, required)
- `verbose`: If 0, return hex string; if non-zero, return JSON object (numeric, optional, default=0)

---

## Arguments
| Name    | Type    | Required | Description                                         |
|---------|---------|----------|-----------------------------------------------------|
| txid    | string  | Yes      | The transaction ID                                  |
| verbose | number  | No       | 0 for hex string, non-zero for JSON object (default: 0) |

---

## Result
If `verbose` is 0:
```
"data" (string): The serialized, hex-encoded transaction data
```
If `verbose` is non-zero:
```
{
  "hex": "data",
  "txid": "id",
  "version": n,
  "locktime": ttt,
  "expiryheight": ttt,
  "vin": [ ... ],
  "vout": [ ... ],
  "vjoinsplit": [ ... ],
  "blockhash": "hash",
  "confirmations": n,
  "time": ttt,
  "blocktime": ttt
}
```

---

## Examples
```bash
# Retrieve the raw transaction data for a given transaction ID
verus getrawtransaction "mytxid"

# Retrieve detailed JSON object for a transaction
verus getrawtransaction "mytxid" 1

# Example: Use in a script to fetch and decode transaction data
for txid in $(cat txids.txt); do
  rawtx=$(verus getrawtransaction "$txid")
  decodedtx=$(verus decoderawtransaction "$rawtx")
  echo "Decoded transaction: $decodedtx"
done

# Example: As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawtransaction", "params": ["mytxid", 1] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- By default, only works for mempool transactions or those with unspent outputs unless `-txindex` is enabled.
- Use for advanced auditing, troubleshooting, and protocol analysis.

---

## Related Commands
- [`decoderawtransaction`](./decoderawtransaction.md): Decode a raw transaction hex string.
- [`gettransaction`](./gettransaction.md): Get detailed information about an in-wallet transaction. 