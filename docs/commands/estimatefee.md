# `estimatefee`

**Summary:**
Estimates the approximate fee per kilobyte needed for a transaction to begin confirmation within a specified number of blocks.

**Category:**
Blockchain, Util

---

## Description
`estimatefee` provides an estimate of the fee per kilobyte required for a transaction to be confirmed within a given number of blocks. This command is useful for fee estimation, transaction planning, and network analysis.

---

## Usage
```bash
verus estimatefee nblocks
```
- `nblocks`: The number of blocks for confirmation target (numeric, required)

---

## Arguments
| Name    | Type    | Required | Description                                 |
|---------|---------|----------|---------------------------------------------|
| nblocks | number  | Yes      | Number of blocks for confirmation target    |

---

## Result
Returns the estimated fee per kilobyte (numeric). Returns the minimum fee if not enough data is available.

---

## Examples
```bash
# Estimate the fee per kilobyte for a transaction to be confirmed within 6 blocks
verus estimatefee 6

# Example: Use in a script to dynamically adjust transaction fees
for blocks in {1..10}; do
  fee=$(verus estimatefee $blocks)
  echo "Fee for $blocks blocks: $fee"
done

# Example: As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "estimatefee", "params": [6] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Returns the minimum fee if not enough transactions and blocks have been observed to make an estimate.
- Useful for fee estimation and transaction planning.

---

## Related Commands
- [`estimatepriority`](./estimatepriority.md): Estimate the priority for zero-fee confirmation. 