# `z_mergetoaddress`

**Summary:**
Merges multiple UTXOs and shielded notes from specified addresses into a single UTXO or note at a destination address. Useful for wallet consolidation, privacy, and UTXO management. **Disabled by default; requires enabling experimental features.**

**Category:**
Wallet

---

## Description
`z_mergetoaddress` consolidates funds from multiple transparent and/or shielded addresses into a single address (t-addr or z-addr). This command is useful for reducing wallet fragmentation, improving privacy, and managing UTXO/note counts. It is asynchronous and returns an operation ID for status tracking. **By default, this command is disabled and must be enabled with the `-experimentalfeatures` and `-zmergetoaddress` options.**

Coinbase UTXOs are ignored; use `z_shieldcoinbase` to combine those. UTXOs/notes selected for merging are locked during the operation. Limits can be set for the number of UTXOs/notes to merge per transaction.

---

## Usage
```bash
verus z_mergetoaddress '["fromaddress1", ...]' "toaddress" [fee] [transparent_limit] [shielded_limit] [memo]
```
- `fromaddresses`: Array of source addresses or special strings (see below)
- `toaddress`: Destination t-addr or z-addr (string, required)
- `[fee]`: Transaction fee (numeric, optional, default=0.0001)
- `[transparent_limit]`: Max UTXOs to merge (numeric, optional, default=50)
- `[shielded_limit]`: Max notes to merge (numeric, optional, default=20 Sprout/200 Sapling)
- `[memo]`: Hex-encoded memo for z-addr recipients (string, optional)

---

## Arguments
| Name              | Type    | Required | Description                                                                 |
|-------------------|---------|----------|-----------------------------------------------------------------------------|
| fromaddresses     | array   | Yes      | Array of t-addrs/z-addrs or special strings (see below)                     |
| toaddress         | string  | Yes      | Destination t-addr or z-addr                                                |
| fee               | number  | No       | Fee to attach to the transaction (default: 0.0001)                          |
| transparent_limit | number  | No       | Max UTXOs to merge (default: 50; 0 = node option or max per tx)             |
| shielded_limit    | number  | No       | Max notes to merge (default: 20 Sprout/200 Sapling; 0 = max per tx)         |
| memo              | string  | No       | Hex-encoded memo for z-addr recipients                                      |

**Special values for `fromaddresses`:**
- `"ANY_TADDR"`: Merge UTXOs from any wallet t-addr
- `"ANY_SPROUT"`: Merge notes from any Sprout z-addr
- `"ANY_SAPLING"`: Merge notes from any Sapling z-addr

---

## Result
Returns a JSON object:
```
{
  "remainingUTXOs": xxx,
  "remainingTransparentValue": xxx,
  "remainingNotes": xxx,
  "remainingShieldedValue": xxx,
  "mergingUTXOs": xxx,
  "mergingTransparentValue": xxx,
  "mergingNotes": xxx,
  "mergingShieldedValue": xxx,
  "opid": "..."
}
```
Use `z_getoperationstatus` with the returned `opid` to check progress or result.

---

## Examples
```bash
# Merge all Sapling notes and a t-addr into a z-addr
verus z_mergetoaddress '["ANY_SAPLING", "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"]' "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"

# Using JSON-RPC via curl
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_mergetoaddress", "params": [["ANY_SAPLING", "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV"], "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- **Disabled by default:** Enable with `-experimentalfeatures` and `-zmergetoaddress`.
- Cannot merge from both Sprout and Sapling addresses simultaneously.
- Coinbase UTXOs are ignored; use `z_shieldcoinbase` for those.
- UTXOs/notes selected for merging are locked during the operation; use `listlockunspent` to view locked UTXOs.
- Limits are constrained by consensus rules and transaction size.
- The operation is asynchronous; use `z_getoperationstatus` to track progress.
- Memo is only supported for z-addr recipients and must be hex-encoded.

---

## Related Commands
- [`z_getoperationstatus`](./z_getoperationstatus.md): Check status of asynchronous operations.
- [`listlockunspent`](./listlockunspent.md): List locked UTXOs.
- [`z_shieldcoinbase`](./z_shieldcoinbase.md): Shield coinbase UTXOs.
- [`z_sendmany`](./z_sendmany.md): Send funds to multiple recipients. 