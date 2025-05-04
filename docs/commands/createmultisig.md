# `createmultisig`

**Summary:**
The `createmultisig` command creates a multi-signature address with a specified number of required signatures from a set of keys.

**Category:**
Util

---

## Description
This command generates a multi-signature address requiring a specified number of signatures from a list of Komodo addresses or hex-encoded public keys. It returns the address and the redeem script.

---

## Usage
```bash
createmultisig nrequired ["key",...]
```

---

## Arguments
| Name      | Type   | Required | Description                                      |
|-----------|--------|----------|--------------------------------------------------|
| nrequired | numeric| Yes      | The number of required signatures.               |
| keys      | string | Yes      | A JSON array of Komodo addresses or hex-encoded public keys. |

---

## Result
Returns a JSON object with:
- `"address"`: The new multisig address.
- `"redeemScript"`: The hex-encoded redemption script.

---

## Examples
- Create a multisig address from 2 addresses:
  ```bash
  verus createmultisig 2 "[\"RTZMZHDFSTFQst8XmX2dR4DaH87cEUs3gC\",\"RNKiEBduBru6Siv1cZRVhp4fkZNyPska6z\"]"
  ```
- JSON-RPC call example:
  ```bash
  curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createmultisig", "params": [2, "[\"RTZMZHDFSTFQst8XmX2dR4DaH87cEUs3gC\",\"RNKiEBduBru6Siv1cZRVhp4fkZNyPska6z\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
  ```

---

## Notes
- None specified.

---

## Related Commands
- None specified. 