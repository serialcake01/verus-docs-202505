# `getrawchangeaddress`

**Summary:**
Returns a new VRSC address for receiving change.

**Category:**
Wallet

---

## Description
The `getrawchangeaddress` command returns a new VRSC address for receiving change. This command is intended for use with raw transactions, not for normal use. It is useful for ensuring that change from a transaction is sent to a new address.

---

## Usage
```bash
getrawchangeaddress
```

---

## Arguments
This command does not take any arguments.

---

## Result
Returns a string representing the new VRSC address for receiving change.

---

## Examples
```bash
# Get a new address for receiving change
verus getrawchangeaddress

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawchangeaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is for use with raw transactions only.

---

## Related Commands
- None. 