# `getreceivedbyaddress`

**Summary:**
Returns the total amount received by the given VRSC address in transactions with at least a specified number of confirmations.

**Category:**
Wallet

---

## Description
The `getreceivedbyaddress` command returns the total amount received by a specified VRSC address in transactions that have at least a specified number of confirmations. This command is useful for auditing received payments to a specific address.

---

## Usage
```bash
getreceivedbyaddress "VRSC_address" ( minconf )
```

---

## Arguments
| Name          | Type    | Required | Description                                                                 |
|---------------|---------|----------|-----------------------------------------------------------------------------|
| VRSC_address  | string  | Yes      | The VRSC address for transactions.                                          |
| minconf       | numeric | No       | Only include transactions confirmed at least this many times. Default is 1. |

---

## Result
Returns a numeric value representing the total amount in VRSC received at the specified address.

---

## Examples
```bash
# The amount from transactions with at least 1 confirmation
verus getreceivedbyaddress "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"

# The amount including unconfirmed transactions, zero confirmations
verus getreceivedbyaddress "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" 0

# The amount with at least 6 confirmations, very safe
verus getreceivedbyaddress "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" 6

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaddress", "params": ["RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- None.

---

## Related Commands
- [`listreceivedbyaddress`](./listreceivedbyaddress.md): List balances by receiving address. 