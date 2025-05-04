# `estimatepriority`

**Summary:**
Estimates the approximate priority a zero-fee transaction needs to begin confirmation within a specified number of blocks.

**Category:**
Blockchain, Util

---

## Description
`estimatepriority` provides an estimate of the transaction priority required for a zero-fee transaction to be confirmed within a given number of blocks. This command is useful for fee estimation, transaction planning, and network analysis.

---

## Usage
```bash
verus estimatepriority nblocks
```
- `nblocks`: The number of blocks for confirmation target (numeric, required)

---

## Arguments
| Name    | Type    | Required | Description                                 |
|---------|---------|----------|---------------------------------------------|
| nblocks | number  | Yes      | Number of blocks for confirmation target    |

---

## Result
Returns the estimated priority (numeric). Returns -1.0 if not enough data is available.

---

## Examples
```bash
# Estimate the priority for a transaction to be confirmed within 6 blocks
verus estimatepriority 6

# Example: Use in a script to dynamically adjust transaction priority
for blocks in {1..10}; do
  priority=$(verus estimatepriority $blocks)
  echo "Priority for $blocks blocks: $priority"
done

# Example: As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "estimatepriority", "params": [6] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Returns -1.0 if not enough transactions and blocks have been observed to make an estimate.
- Useful for fee estimation and transaction planning.

---

## Related Commands
- [`estimatefee`](./estimatefee.md): Estimate the fee per kilobyte for confirmation. 