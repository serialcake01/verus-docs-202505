# `z_sendmany`

**Summary:**
Sends funds from a transparent or shielded address to multiple recipients (transparent or shielded), supporting privacy-preserving transactions and optional memos. Enables batch payments and advanced privacy workflows in the Verus wallet.

**Category:**
Wallet

---

## Description
`z_sendmany` allows you to send funds from a single t-address or z-address to multiple recipients, each of which can be a t-address or z-address. This command supports privacy-preserving payments, batch payouts, and the inclusion of memos for shielded recipients. It is asynchronous and returns an operation ID for status tracking. Change from t-addresses is sent to a new t-address; change from z-addresses returns to itself. When sending coinbase UTXOs to a z-address, the entire value must be consumed.

---

## Usage
```bash
verus z_sendmany "<fromaddress>" '[{"address": "<toaddress>", "amount": <amount>, "memo": "<hexmemo>"}, ...]' [minconf] [fee]
```
- `<fromaddress>`: Source t-address or z-address (string, required)
- `amounts`: Array of recipient objects (address, amount, optional memo)
- `[minconf]`: Minimum confirmations for funds (numeric, optional, default=1)
- `[fee]`: Transaction fee (numeric, optional, default=0.0001)

---

## Arguments
| Name        | Type    | Required | Description                                                                 |
|-------------|---------|----------|-----------------------------------------------------------------------------|
| fromaddress | string  | Yes      | Source t-address or z-address                                               |
| amounts     | array   | Yes      | Array of objects: `{address, amount, memo?}`                                |
| minconf     | number  | No       | Only use funds confirmed at least this many times (default: 1)              |
| fee         | number  | No       | Fee to attach to the transaction (default: 0.0001)                          |

Each `amounts` object:
- `address` (string, required): Recipient t-address or z-address
- `amount` (number, required): Amount to send (up to 8 decimal places)
- `memo` (string, optional): Hexadecimal memo for z-address recipients

---

## Result
Returns an operation ID (string) to track the asynchronous send operation:
```
"operationid"
```
Use `z_getoperationstatus` with this ID to check progress or result.

---

## Examples
```bash
# Send 5 VRSC from a t-address to a z-address
verus z_sendmany "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" '[{"address": "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf", "amount": 5.0}]'

# Using JSON-RPC via curl
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_sendmany", "params": ["RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV", [{"address": "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf", "amount": 5.0}]] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Amounts are decimal numbers with up to 8 digits of precision.
- Change from t-addresses is sent to a new t-address; change from z-addresses returns to itself.
- When sending coinbase UTXOs to a z-address, the entire value must be consumed (no change).
- Before Sapling, max 54 z-address outputs per transaction due to size limits.
- The operation is asynchronous; use `z_getoperationstatus` to track progress.
- Memos are only supported for z-address recipients and must be hex-encoded.

---

## Related Commands
- [`z_getoperationstatus`](./z_getoperationstatus.md): Check status of asynchronous operations.
- [`z_listoperationids`](./z_listoperationids.md): List all operation IDs.
- [`z_mergetoaddress`](./z_mergetoaddress.md): Merge funds from multiple addresses to one. 