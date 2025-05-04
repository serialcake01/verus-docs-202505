# `invalidateblock`

**Summary:**
Permanently marks a block as invalid, as if it violated a consensus rule. Used for chain reorganization and troubleshooting.

**Category:**
Blockchain

---

## Description
`invalidateblock` marks a specified block as invalid, causing it and its descendants to be excluded from the active chain. This command is essential for chain reorganization, troubleshooting, and simulating consensus rule violations.

---

## Usage
```bash
verus invalidateblock "hash"
```
- `hash`: The hash of the block to mark as invalid (string, required)

---

## Arguments
| Name | Type   | Required | Description                      |
|------|--------|----------|----------------------------------|
| hash | string | Yes      | The hash of the block to mark as invalid |

---

## Result
No direct result; the block and its descendants are marked as invalid.

---

## Examples
```bash
# Invalidate a block to simulate a consensus rule violation
verus invalidateblock "blockhash"

# Example: Invalidate a block during a chain reorganization
verus invalidateblock "0000000000000000000bbae2e3b1c1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1"

# Example: Use in a script to automate block invalidation for testing
for blockhash in $(cat blockhashes.txt); do
  verus invalidateblock "$blockhash"
done
```

---

## Notes
- Used to simulate consensus rule violations or troubleshoot chain issues.
- Can trigger a chain reorganization.
- Use [`reconsiderblock`](./reconsiderblock.md) to undo this action.

---

## Related Commands
- [`reconsiderblock`](./reconsiderblock.md): Remove invalidity status from a block. 