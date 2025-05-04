# `z_viewtransaction`

**Summary:**
Retrieves detailed shielded information about a specific in-wallet transaction, including shielded spends and outputs, for privacy-preserving addresses (z-addresses) in the Verus wallet.

**Category:**
Wallet, Raw Transactions

---

## Description
`z_viewtransaction` is a protocol-level command that provides an in-depth view of shielded (private) transaction details for a given transaction ID within your wallet. It is essential for users managing privacy-preserving funds (z-addresses) and enables advanced auditing and troubleshooting of shielded transactions. This command is unique to Verus' privacy architecture, leveraging zk-SNARKs for confidential transfers at the protocol layer.

---

## Usage
```bash
verus z_viewtransaction "<txid>"
```
- `<txid>`: The transaction ID to inspect (string, required).

---

## Arguments
| Name   | Type    | Required | Description                                      |
|--------|---------|----------|--------------------------------------------------|
| txid   | string  | Yes      | The transaction ID to retrieve shielded details. |

---

## Result
Returns a JSON object with the following structure:

```
{
  "txid": "transactionid", // The transaction id
  "spends": [
    {
      "type": "sprout|sapling", // Address type
      "js": n,                   // (sprout) JoinSplit index
      "jsSpend": n,              // (sprout) Spend index in JoinSplit
      "spend": n,                // (sapling) Spend index
      "txidPrev": "...",        // Previous transaction id
      "jsPrev": n,               // (sprout) Previous JoinSplit index
      "jsOutputPrev": n,         // (sprout) Previous output index
      "outputPrev": n,           // (sapling) Previous output index
      "address": "zaddress",    // z-address involved
      "value": x.xxx,            // Amount in VRSC
      "valueZat": xxxx           // Amount in zatoshis
    }, ...
  ],
  "outputs": [
    {
      "type": "sprout|sapling", // Address type
      "js": n,                   // (sprout) JoinSplit index
      "jsOutput": n,             // (sprout) Output index in JoinSplit
      "output": n,               // (sapling) Output index
      "address": "address",     // Verus private address
      "recovered": true|false,   // (sapling) True if not for wallet address
      "value": x.xxx,            // Amount in VRSC
      "valueZat": xxxx,          // Amount in zatoshis
      "memo": "hexmemo",        // Hexadecimal memo field
      "memoStr": "memo"         // UTF-8 memo (if valid)
    }, ...
  ]
}
```

---

## Examples
```bash
# View shielded transaction details for a given txid
verus z_viewtransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"

# Using JSON-RPC via curl
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_viewtransaction", "params": ["1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Only transactions involving shielded addresses (z-addresses) in your wallet will return detailed information.
- This command is essential for privacy auditing and troubleshooting shielded transactions.
- Requires access to the wallet containing the relevant z-addresses.
- All shielded transaction data is protected by Verus' protocol-level zk-SNARK privacy.
- For transparent transactions, use `gettransaction` instead.

---

## Related Commands
- [`z_getoperationresult`](./z_getoperationresult.md): Get results of asynchronous shielded operations.
- [`z_listreceivedbyaddress`](./z_listreceivedbyaddress.md): List received shielded funds by address.
- [`gettransaction`](./gettransaction.md): View details of any transaction (transparent or shielded summary). 