# `decryptdata`

**Summary:**
The `decryptdata` command decrypts a VDXF data descriptor, typically encrypted to a z-address.

**Category:**
Util

---

## Description
This command decrypts a VDXF data descriptor using wallet keys included in the descriptor. If a viewing key is present, it attempts to decrypt any nested encryptions. If no decryption is possible, it returns an error.

---

## Usage
```bash
decryptdata '{
                  "datadescriptor": {},
                  "evk":"Optional Sapling extended full viewing key",
                  "ivk":"Optional hex incoming viewing key",
                  "txid":"hex",
                  "retrieve": bool
              }
```

---

## Arguments
| Name            | Type   | Required | Description                                      |
|-----------------|--------|----------|--------------------------------------------------|
| datadescriptor  | object | Yes      | Encrypted data descriptor to decrypt.            |
| evk             | evk    | No       | Sapling extended full viewing key for decoding.  |
| ivk             | ivk    | No       | Sapling incoming viewing key for decoding.       |
| txid            | txid   | No       | Transaction ID if data is from a transaction.    |
| retrieve        | bool   | No       | Defaults to false. If true, retrieves and decrypts data from its reference. |

---

## Result
Not explicitly stated, but it returns the decrypted data if successful.

---

## Examples
- Encrypt data:
  ```bash
  verus signdata '{"address":"Verus Coin Foundation.vrsc@", "createmmr":true, "data":[{"message":"hello world", "encrypttoaddress":"Sapling address"}]}'
  ```
- Decrypt data:
  ```bash
  verus decryptdata '{encrypteddatadescriptor}'
  ```
- JSON-RPC call example:
  ```bash
  curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signdata", "params": ['{"address":"Verus Coin Foundation.vrsc@", "createmmr":true, "data":[{"message":"hello world", "encrypttoaddress":"Sapling address"}]}'] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
  ```

---

## Notes
- None specified.

---

## Related Commands
- None specified. 