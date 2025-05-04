# `listaccounts`

**Summary:**
DEPRECATED. Returns an object with account names as keys and account balances as values.

**Category:**
Wallet

---

## Description
The `listaccounts` command returns an object where account names are keys and account balances are values. This command is deprecated and users are encouraged to use other methods for managing account balances. It provides a simple way to view the balance of each account in the wallet.

---

## Usage
```bash
listaccounts ( minconf includeWatchonly)
```

---

## Arguments
| Name             | Type    | Required | Description                                                                 |
|------------------|---------|----------|-----------------------------------------------------------------------------|
| minconf          | numeric | No       | Only include transactions with at least this many confirmations. Default is 1. |
| includeWatchonly | bool    | No       | Include balances in watchonly addresses. Default is false.                  |

---

## Result
Returns a JSON object where keys are account names and values are numeric balances:
- `account`: (numeric) The property name is the account name, and the value is the total balance for the account.

---

## Examples
```bash
# List account balances where there are at least 1 confirmation
verus listaccounts

# List account balances including zero confirmation transactions
verus listaccounts 0

# List account balances for 6 or more confirmations
verus listaccounts 6

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaccounts", "params": [6] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is deprecated.

---

## Related Commands
- [`listreceivedbyaccount`](./listreceivedbyaccount.md): List balances by account. 