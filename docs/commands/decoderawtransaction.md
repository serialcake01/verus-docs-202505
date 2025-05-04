# `decoderawtransaction`

**Summary:**
Decodes a serialized, hex-encoded transaction and returns a JSON object representing its structure and contents. Essential for protocol analysis and troubleshooting.

**Category:**
Raw Transactions

---

## Description
`decoderawtransaction` takes a serialized, hex-encoded transaction and decodes it into a human-readable JSON object. This command is essential for protocol analysis, transaction debugging, and advanced wallet operations.

---

## Usage
```bash
verus decoderawtransaction "hexstring"
```
- `hexstring`: The transaction hex string (string, required)

---

## Arguments
| Name      | Type    | Required | Description                                         |
|-----------|---------|----------|-----------------------------------------------------|
| hexstring | string  | Yes      | The transaction hex string                          |

---

## Result
Returns a JSON object representing the transaction:
```
{
  "txid": "id",
  "overwintered": bool,
  "version": n,
  "versiongroupid": "hex",
  "locktime": ttt,
  "expiryheight": n,
  "vin": [ ... ],
  "vout": [ ... ],
  "vjoinsplit": [ ... ]
}
```

---

## Examples
```bash
verus decoderawtransaction "hexstring"
```

---

## Notes
- Useful for protocol analysis, debugging, and advanced wallet operations.
- Handles both transparent and shielded join-split data.

---

## Related Commands
- [`getrawtransaction`](./getrawtransaction.md): Get the raw transaction data for a given transaction ID.
- [`decodescript`](./decodescript.md): Decode a hex-encoded script. 