# `addmultisigaddress`

**Summary:**
Add a nrequired-to-sign multisignature address to the wallet.

**Category:**
Wallet

---

## Description
The `addmultisigaddress` command adds a multisignature address to the wallet, requiring a specified number of signatures to authorize a transaction. Each key can be a VRSC address or a hex-encoded public key. The account parameter is deprecated and should be set to the empty string "".

---

## Usage
```bash
addmultisigaddress nrequired ["key",...] ( "account" )
```

---

## Arguments
| Name       | Type    | Required | Description                                                                 |
|------------|---------|----------|-----------------------------------------------------------------------------|
| nrequired  | numeric | Yes      | The number of required signatures out of the n keys or addresses.           |
| keysobject | string  | Yes      | A JSON array of VRSC addresses or hex-encoded public keys.                  |
| account    | string  | No       | DEPRECATED. If provided, it MUST be set to the empty string "".            |

---

## Result
Returns a string representing a VRSC address associated with the keys.

---

## Examples
```bash
# Add a multisig address from 2 addresses
verus addmultisigaddress 2 "[\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\",\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\"]"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addmultisigaddress", "params": [2, "[\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\",\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- The `account` parameter is deprecated.

---

## Related Commands
- None. 