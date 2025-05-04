# `getnewaddress`

**Summary:**
Returns a new VRSC address for receiving payments.

**Category:**
Wallet

---

## Description
The `getnewaddress` command returns a new VRSC address for receiving payments. This command is useful for generating new addresses to receive funds. The account parameter is deprecated and should be set to the empty string "".

---

## Usage
```bash
getnewaddress ( "account" )
```

---

## Arguments
| Name    | Type   | Required | Description                                                                 |
|---------|--------|----------|-----------------------------------------------------------------------------|
| account | string | No       | DEPRECATED. If provided, it MUST be set to the empty string "".            |

---

## Result
Returns a string representing the new VRSC address.

---

## Examples
```bash
# Get a new address for receiving payments
verus getnewaddress

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnewaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- The `account` parameter is deprecated.

---

## Related Commands
- [`getrawchangeaddress`](./getrawchangeaddress.md): Returns a new VRSC address for receiving change. 