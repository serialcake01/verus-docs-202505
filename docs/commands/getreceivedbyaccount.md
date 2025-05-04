# `getreceivedbyaccount`

**Summary:**
DEPRECATED. Returns the total amount received by addresses with a specified account in transactions with at least a specified number of confirmations.

**Category:**
Wallet

---

## Description
The `getreceivedbyaccount` command returns the total amount received by addresses associated with a specified account in transactions that have at least a specified number of confirmations. This command is deprecated, and users are encouraged to use other methods for managing account balances.

---

## Usage
```bash
getreceivedbyaccount "account" ( minconf )
```

---

## Arguments
| Name    | Type    | Required | Description                                                                 |
|---------|---------|----------|-----------------------------------------------------------------------------|
| account | string  | Yes      | MUST be set to the empty string "" to represent the default account.        |
| minconf | numeric | No       | Only include transactions confirmed at least this many times. Default is 1. |

---

## Result
Returns a numeric value representing the total amount in VRSC received for the specified account.

---

## Examples
```bash
# Amount received by the default account with at least 1 confirmation
verus getreceivedbyaccount ""

# Amount received at the tabby account including unconfirmed amounts with zero confirmations
verus getreceivedbyaccount "tabby" 0

# The amount with at least 6 confirmations, very safe
verus getreceivedbyaccount "tabby" 6

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaccount", "params": ["tabby", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is deprecated.

---

## Related Commands
- [`getreceivedbyaddress`](./getreceivedbyaddress.md): Returns the total amount received by the given VRSC address. 