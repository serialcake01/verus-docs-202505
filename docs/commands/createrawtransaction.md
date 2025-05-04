# `createrawtransaction`

**Summary:**
Creates a raw transaction spending specified inputs and sending to specified addresses. Returns a hex-encoded transaction for signing and broadcasting.

**Category:**
Raw Transactions

---

## Description
`createrawtransaction` constructs a raw transaction from specified inputs and outputs, returning a hex-encoded transaction. The transaction is unsigned and not stored in the wallet or broadcast to the network. This command is essential for advanced transaction construction, protocol analysis, and custom workflows.

---

## Usage
```bash
verus createrawtransaction '[{"txid":"id","vout":n},...]' '{"address":amount,...}' [locktime] [expiryheight]
```
- `transactions`: JSON array of input objects (string, required)
- `addresses`: JSON object of outputs (string, required)
- `locktime`: Raw locktime (numeric, optional, default=0)
- `expiryheight`: Expiry height (numeric, optional, default=nextblockheight+20/40)

---

## Arguments
| Name         | Type    | Required | Description                                         |
|--------------|---------|----------|-----------------------------------------------------|
| transactions | array   | Yes      | Array of input objects (txid, vout, [sequence])     |
| addresses    | object  | Yes      | Object of outputs (address/ID, amount, [data])      |
| locktime     | number  | No       | Raw locktime (default: 0)                           |
| expiryheight | number  | No       | Expiry height (default: nextblockheight+20/40)      |

---

## Result
Returns a hex string of the unsigned transaction.

---

## Examples
```bash
verus createrawtransaction '[{"txid":"myid","vout":0}]' '{"address":0.01}'
verus createrawtransaction '[{"txid":"myid","vout":0}]' '{"address":0.01,"data":"00010203"}'
```

---

## Notes
- The transaction is unsigned and not stored or broadcast.
- Use `fundrawtransaction` to add inputs and change.
- Use `signrawtransaction` to sign the transaction.

---

## Related Commands
- [`fundrawtransaction`](./fundrawtransaction.md): Add inputs and change to a raw transaction.
- [`signrawtransaction`](./signrawtransaction.md): Sign a raw transaction. 