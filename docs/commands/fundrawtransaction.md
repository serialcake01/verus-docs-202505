# `fundrawtransaction`

**Summary:**
Adds inputs to a raw transaction until it has enough value to meet its outputs, optionally specifying UTXOs, change address, and explicit fee. Returns a hex-encoded transaction ready for signing.

**Category:**
Raw Transactions

---

## Description
`fundrawtransaction` takes a raw transaction and adds sufficient inputs to fund its outputs, optionally using a provided UTXO list, change address, and explicit fee. The resulting transaction is unsigned and not broadcast. This command is essential for advanced transaction construction, protocol analysis, and custom workflows.

---

## Usage
```bash
verus fundrawtransaction "hexstring" '[{"txid":"id","voutnum":n},...]' [changeaddress] [explicitfee]
```
- `hexstring`: The hex string of the raw transaction (string, required)
- `objectarray`: UTXO list to select from (array, optional)
- `changeaddress`: Address to send change to (string, optional)
- `explicitfee`: Offer this fee instead of the default (number, optional)

---

## Arguments
| Name          | Type    | Required | Description                                         |
|---------------|---------|----------|-----------------------------------------------------|
| hexstring     | string  | Yes      | The hex string of the raw transaction               |
| objectarray   | array   | No       | UTXO list to select from for funding                |
| changeaddress | string  | No       | Address to send change to (optional)                |
| explicitfee   | number  | No       | Offer this fee instead of the default (optional)    |

---

## Result
Returns a JSON object:
```
{
  "hex": "value",   // The resulting raw transaction (hex-encoded string)
  "fee": n,          // The fee added to the transaction
  "changepos": n     // The position of the added change output, or -1
}
```

---

## Examples
```bash
verus createrawtransaction "[]" "{\"myaddress\":0.01}"
verus fundrawtransaction "rawtransactionhex"
```

---

## Notes
- The resulting transaction is unsigned and not broadcast.
- Use `signrawtransaction` to sign the transaction.
- Use `sendrawtransaction` to broadcast the signed transaction.

---

## Related Commands
- [`createrawtransaction`](./createrawtransaction.md): Create a raw transaction.
- [`signrawtransaction`](./signrawtransaction.md): Sign a raw transaction.
- [`sendrawtransaction`](./sendrawtransaction.md): Broadcast a signed transaction. 