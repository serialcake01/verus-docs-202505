# `importaddress`

**Summary:**
Adds an address or script that can be watched as if it were in your wallet but cannot be used to spend.

**Category:**
Wallet

---

## Description
The `importaddress` command adds an address or script (in hex) to your wallet that can be watched as if it were in your wallet but cannot be used to spend. This command is useful for monitoring addresses without having the private keys. It can optionally rescan the wallet for transactions associated with the imported address.

---

## Usage
```bash
importaddress "address" ( "label" rescan )
```

---

## Arguments
| Name   | Type    | Required | Description                                                                 |
|--------|---------|----------|-----------------------------------------------------------------------------|
| address| string  | Yes      | The address to import.                                                      |
| label  | string  | No       | An optional label for the address. Default is "".                          |
| rescan | boolean | No       | Rescan the wallet for transactions. Default is true.                        |

---

## Result
This command does not return a value.

---

## Examples
```bash
# Import an address with rescan
verus importaddress "myaddress"

# Import using a label without rescan
verus importaddress "myaddress" "testing" false

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importaddress", "params": ["myaddress", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This call can take minutes to complete if rescan is true.

---

## Related Commands
- None. 