# `listunspent`

**Summary:**
Returns an array of unspent transaction outputs with specified confirmations.

**Category:**
Wallet

---

## Description
The `listunspent` command returns an array of unspent transaction outputs (UTXOs) that have between a specified minimum and maximum number of confirmations. Users can optionally filter the results to include only outputs paid to specified addresses and choose to include outputs that can also be spent by others.

---

## Usage
```bash
listunspent ( minconf maxconf ["address",...] includeshared )
```

---

## Arguments
| Name          | Type    | Required | Description                                                                 |
|---------------|---------|----------|-----------------------------------------------------------------------------|
| minconf       | numeric | No       | The minimum confirmations to filter. Default is 1.                          |
| maxconf       | numeric | No       | The maximum confirmations to filter. Default is 9999999.                    |
| addresses     | string  | No       | A JSON array of VRSC addresses to filter.                                   |
| includeshared | bool    | No       | Include outputs that can also be spent by others. Default is false.         |

---

## Result
Returns an array of JSON objects, each containing:
- `txid`: (string) The transaction ID.
- `vout`: (numeric) The vout value.
- `generated`: (boolean) True if the txout is a coinbase transaction output.
- `address`: (string) The VRSC address.
- `account`: (string) DEPRECATED. The associated account, or "" for the default account.
- `scriptPubKey`: (string) The script key.
- `amount`: (numeric) The transaction amount in VRSC.
- `confirmations`: (numeric) The number of confirmations.
- `redeemScript`: (string) The redeemScript if scriptPubKey is P2SH.
- `spendable`: (bool) Whether we have the private keys to spend this output.

---

## Examples
```bash
# List all unspent transactions
verus listunspent

# List unspent transactions with at least 6 confirmations
verus listunspent 6 9999999 "[\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\",\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\"]"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspent", "params": [6, 9999999, "[\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\",\"RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- The `account` field is deprecated.

---

## Related Commands
- [`lockunspent`](./lockunspent.md): Temporarily lock or unlock specified transaction outputs. 