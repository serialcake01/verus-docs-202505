# `listaddressgroupings`

**Summary:**
Lists groups of addresses with common ownership made public by common use as inputs or resulting change in past transactions.

**Category:**
Wallet

---

## Description
The `listaddressgroupings` command lists groups of addresses that have had their common ownership made public by being used as inputs or as the resulting change in past transactions. This command is useful for analyzing address groupings and understanding the relationships between addresses in your wallet.

---

## Usage
```bash
listaddressgroupings
```

---

## Arguments
This command does not take any arguments.

---

## Result
Returns an array of arrays, each containing:
- `VRSC address`: (string) The VRSC address.
- `amount`: (numeric) The amount in VRSC.
- `account`: (string, optional) The account (DEPRECATED).

---

## Examples
```bash
# List address groupings
verus listaddressgroupings

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressgroupings", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- The `account` field is deprecated.

---

## Related Commands
- None. 