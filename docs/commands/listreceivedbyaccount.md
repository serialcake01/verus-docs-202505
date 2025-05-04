# `listreceivedbyaccount`

**Summary:**
DEPRECATED. List balances by account.

**Category:**
Wallet

---

## Description
The `listreceivedbyaccount` command lists the balances by account. It provides details on the total amount received by each account, the number of confirmations, and whether the account involves watchonly addresses. This command is deprecated and users are encouraged to use other methods for managing account balances.

---

## Usage
```bash
listreceivedbyaccount ( minconf includeempty includeWatchonly)
```

---

## Arguments
| Name             | Type    | Required | Description                                                                 |
|------------------|---------|----------|-----------------------------------------------------------------------------|
| minconf          | numeric | No       | The minimum number of confirmations before payments are included. Default is 1. |
| includeempty     | bool    | No       | Whether to include accounts that haven't received any payments. Default is false. |
| includeWatchonly | bool    | No       | Whether to include watchonly addresses. Default is false.                   |

---

## Result
Returns an array of JSON objects, each containing:
- `involvesWatchonly`: (bool) Only returned if imported addresses were involved in the transaction.
- `account`: (string) The account name of the receiving account.
- `amount`: (numeric) The total amount received by addresses with this account.
- `confirmations`: (numeric) The number of confirmations of the most recent transaction included.

---

## Examples
```bash
# List balances by account
verus listreceivedbyaccount

# List balances with at least 6 confirmations, including empty accounts
verus listreceivedbyaccount 6 true

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaccount", "params": [6, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is deprecated.

---

## Related Commands
- [`listreceivedbyaddress`](./listreceivedbyaddress.md): List balances by receiving address. 