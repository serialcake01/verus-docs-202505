# `listreceivedbyaddress`

**Summary:**
List balances by receiving address.

**Category:**
Wallet

---

## Description
The `listreceivedbyaddress` command lists the balances by receiving address. It provides details on the total amount received by each address, the number of confirmations, and whether the address is a watchonly address. This command is useful for auditing received payments and managing wallet balances.

---

## Usage
```bash
listreceivedbyaddress ( minconf includeempty includeWatchonly)
```

---

## Arguments
| Name             | Type    | Required | Description                                                                 |
|------------------|---------|----------|-----------------------------------------------------------------------------|
| minconf          | numeric | No       | The minimum number of confirmations before payments are included. Default is 1. |
| includeempty     | numeric | No       | Whether to include addresses that haven't received any payments. Default is false. |
| includeWatchonly | bool    | No       | Whether to include watchonly addresses. Default is false.                   |

---

## Result
Returns an array of JSON objects, each containing:
- `involvesWatchonly`: (bool) Only returned if imported addresses were involved in the transaction.
- `address`: (string) The receiving address.
- `account`: (string) DEPRECATED. The account of the receiving address.
- `amount`: (numeric) The total amount in VRSC received by the address.
- `confirmations`: (numeric) The number of confirmations of the most recent transaction included.

---

## Examples
```bash
# List balances by receiving address
verus listreceivedbyaddress

# List balances with at least 6 confirmations, including empty addresses
verus listreceivedbyaddress 6 true

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaddress", "params": [6, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- The `account` field is deprecated.

---

## Related Commands
- [`listtransactions`](./listtransactions.md): Returns up to a specified number of the most recent transactions. 