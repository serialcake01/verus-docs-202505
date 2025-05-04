# `getbalance`

**Summary:**
Returns the server's total available balance.

**Category:**
Wallet

---

## Description
The `getbalance` command returns the server's total available balance. This command is useful for checking the total balance of the wallet, including options to filter by confirmation count and include watchonly addresses.

---

## Usage
```bash
getbalance ( "account" minconf includeWatchonly )
```

---

## Arguments
| Name             | Type    | Required | Description                                                                 |
|------------------|---------|----------|-----------------------------------------------------------------------------|
| account          | string  | No       | DEPRECATED. If provided, it MUST be set to "" or "*".                     |
| minconf          | numeric | No       | Only include transactions confirmed at least this many times. Default is 1. |
| includeWatchonly | bool    | No       | Also include balance in watchonly addresses. Default is false.              |

---

## Result
Returns a numeric value representing the total amount in VRSC received for this account.

---

## Examples
```bash
# The total amount in the wallet
verus getbalance

# The total amount in the wallet at least 5 blocks confirmed
verus getbalance "*" 6

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbalance", "params": ["*", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- The `account` parameter is deprecated.

---

## Related Commands
- [`getcurrencybalance`](./getcurrencybalance.md): Returns the balance in all currencies of a taddr or zaddr. 