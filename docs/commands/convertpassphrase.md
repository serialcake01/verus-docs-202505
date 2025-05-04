# `convertpassphrase`

**Summary:**
The `convertpassphrase` command converts a Verus Desktop, Agama, Verus Agama, or Verus Mobile passphrase to a private key and WIF for import with `importprivkey`.

**Category:**
Util

---

## Description
This command converts a wallet passphrase into a private key and WIF, allowing the user to import it using the `importprivkey` command.

---

## Usage
```bash
convertpassphrase "walletpassphrase"
```

---

## Arguments
| Name              | Type   | Required | Description                                      |
|-------------------|--------|----------|--------------------------------------------------|
| walletpassphrase  | string | Yes      | The wallet passphrase.                           |

---

## Result
Returns an object with:
- `"walletpassphrase"`: The wallet passphrase entered.
- `"address"`: The Verus address corresponding to the passphrase.
- `"pubkey"`: The hex value of the raw public key.
- `"privkey"`: The hex value of the raw private key.
- `"wif"`: The private key in WIF format for use with `importprivkey`.

---

## Examples
- Convert a passphrase:
  ```bash
  verus convertpassphrase "walletpassphrase"
  ```
- JSON-RPC call example:
  ```bash
  curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "convertpassphrase", "params": ["walletpassphrase"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
  ```

---

## Notes
- None specified.

---

## Related Commands
- `importprivkey` 