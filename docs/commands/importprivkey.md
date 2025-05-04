# `importprivkey`

**Summary:**
Adds a private key to your wallet.

**Category:**
Wallet

---

## Description
The `importprivkey` command adds a private key to your wallet. This command is useful for importing keys that were previously exported using the `dumpprivkey` command. It can optionally rescan the wallet for transactions associated with the imported key.

---

## Usage
```bash
importprivkey "verusprivkey" ( "label" rescan )
```

---

## Arguments
| Name          | Type    | Required | Description                                                                 |
|---------------|---------|----------|-----------------------------------------------------------------------------|
| verusprivkey  | string  | Yes      | The private key to import.                                                  |
| label         | string  | No       | An optional label for the key. Default is "".                               |
| rescan        | boolean | No       | Rescan the wallet for transactions. Default is true.                        |

---

## Result
This command does not return a value.

---

## Examples
```bash
# Import the private key with rescan
verus importprivkey "mykey"

# Import using a label and without rescan
verus importprivkey "mykey" "testing" false

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importprivkey", "params": ["mykey", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This call can take minutes to complete if rescan is true.

---

## Related Commands
- [`dumpprivkey`](./dumpprivkey.md): Reveals the private key corresponding to a Verus address. 