# `lockunspent`

**Summary:**
Temporarily lock or unlock specified transaction outputs to control their spendability.

**Category:**
Wallet

---

## Description
The `lockunspent` command updates the list of temporarily unspendable outputs by locking or unlocking specified transaction outputs. Locked outputs will not be selected by automatic coin selection when spending VRSC. These locks are stored in memory only and are cleared when the node stops or fails.

---

## Usage
```bash
lockunspent unlock [{"txid":"txid","vout":n},...]
```

---

## Arguments
| Name         | Type    | Required | Description                                                                 |
|--------------|---------|----------|-----------------------------------------------------------------------------|
| unlock       | boolean | Yes      | Whether to unlock (true) or lock (false) the specified transactions.        |
| transactions | string  | Yes      | A JSON array of objects, each containing a `txid` and `vout`.               |

---

## Result
Returns `true` if successful, `false` otherwise.

---

## Examples
```bash
# Lock an unspent transaction
verus lockunspent false "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

# Unlock the transaction again
verus lockunspent true "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "lockunspent", "params": [false, "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Locks are stored in memory only and are cleared when the node stops or fails.

---

## Related Commands
- [`listlockunspent`](./listlockunspent.md): Lists all locked unspent transaction outputs. 