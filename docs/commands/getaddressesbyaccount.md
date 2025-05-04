# `getaddressesbyaccount`

**Summary:**
DEPRECATED. Returns the list of addresses for the given account.

**Category:**
Wallet

---

## Description
The `getaddressesbyaccount` command returns the list of addresses associated with a specified account. This command is deprecated, and users are encouraged to use other methods for managing account addresses.

---

## Usage
```bash
getaddressesbyaccount "account"
```

---

## Arguments
| Name    | Type   | Required | Description                                                                 |
|---------|--------|----------|-----------------------------------------------------------------------------|
| account | string | Yes      | MUST be set to the empty string "" to represent the default account.        |

---

## Result
Returns a JSON array of strings, each representing a VRSC address associated with the given account.

---

## Examples
```bash
# Get the list of addresses for the account "tabby"
verus getaddressesbyaccount "tabby"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressesbyaccount", "params": ["tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is deprecated.

---

## Related Commands
- [`getaccountaddress`](./getaccountaddress.md): Returns the current address for receiving payments to a given account. 