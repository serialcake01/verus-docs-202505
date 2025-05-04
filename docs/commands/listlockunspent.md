# `listlockunspent`

**Summary:**
Returns a list of temporarily unspendable outputs.

**Category:**
Wallet

---

## Description
The `listlockunspent` command returns a list of transaction outputs that are temporarily unspendable. This command is useful for auditing locked outputs and managing wallet transactions. It complements the `lockunspent` command, which is used to lock and unlock transaction outputs.

---

## Usage
```bash
listlockunspent
```

---

## Arguments
This command does not take any arguments.

---

## Result
Returns an array of JSON objects, each containing:
- `txid`: (string) The transaction ID of the locked output.
- `vout`: (numeric) The vout value of the locked output.

---

## Examples
```bash
# List the locked transactions
verus listlockunspent

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listlockunspent", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Use the `lockunspent` command to lock or unlock transaction outputs.

---

## Related Commands
- [`lockunspent`](./lockunspent.md): Temporarily lock or unlock specified transaction outputs. 