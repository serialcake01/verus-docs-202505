# `getaccountaddress`

**Summary:**
DEPRECATED. Returns the current VRSC address for receiving payments to this account.

**Category:**
Wallet

---

## Description
The `getaccountaddress` command returns the current VRSC address for receiving payments to a specified account. This command is deprecated, and users are encouraged to use other methods for managing account addresses.

---

## Usage
```bash
getaccountaddress "account"
```

---

## Arguments
| Name    | Type   | Required | Description                                                                 |
|---------|--------|----------|-----------------------------------------------------------------------------|
| account | string | Yes      | MUST be set to the empty string "" to represent the default account.        |

---

## Result
Returns a string representing the VRSC address associated with the given account.

---

## Examples
```bash
# Get the current address for receiving payments to the account "myaccount"
verus getaccountaddress "myaccount"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccountaddress", "params": ["myaccount"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is deprecated.

---

## Related Commands
- [`getaddressesbyaccount`](./getaddressesbyaccount.md): Returns the list of addresses for the given account. 