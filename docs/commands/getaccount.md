# `getaccount`

**Summary:**
DEPRECATED. Returns the account associated with the given address.

**Category:**
Wallet

---

## Description
The `getaccount` command returns the account associated with a specified VRSC address. This command is deprecated, and users are encouraged to use other methods for managing account associations.

---

## Usage
```bash
getaccount "VRSC_address"
```

---

## Arguments
| Name         | Type   | Required | Description                                                                 |
|--------------|--------|----------|-----------------------------------------------------------------------------|
| VRSC_address | string | Yes      | The VRSC address for account lookup.                                        |

---

## Result
Returns a string representing the account name associated with the given address.

---

## Examples
```bash
# Get the account associated with the address "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"
verus getaccount "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccount", "params": ["RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is deprecated.

---

## Related Commands
- [`getaccountaddress`](./getaccountaddress.md): Returns the current address for receiving payments to a given account. 