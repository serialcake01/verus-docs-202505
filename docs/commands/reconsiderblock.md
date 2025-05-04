# `reconsiderblock`

**Summary:**
Removes invalidity status from a block and its descendants, reconsidering them for activation. Used to undo the effects of `invalidateblock`.

**Category:**
Blockchain

---

## Description
`reconsiderblock` removes the invalid status from a specified block and all its descendants, allowing them to be reconsidered for activation in the blockchain. This command is essential for chain reorganization, troubleshooting, and recovery from accidental or incorrect block invalidation.

---

## Usage
```bash
verus reconsiderblock "hash"
```
- `hash`: The hash of the block to reconsider (string, required)

---

## Arguments
| Name | Type   | Required | Description                      |
|------|--------|----------|----------------------------------|
| hash | string | Yes      | The hash of the block to reconsider |

---

## Result
No direct result; the block and its descendants are reconsidered for activation.

---

## Examples
```bash
# Reconsider a block that was previously invalidated
verus reconsiderblock "blockhash"

# Example: Reconsider a block after resolving a network issue
verus reconsiderblock "0000000000000000000bbae2e3b1c1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1"

# Example: Use in a script to automate block reconsideration after maintenance
for blockhash in $(cat blockhashes.txt); do
  verus reconsiderblock "$blockhash"
done
```

---

## Notes
- Used to undo the effects of `invalidateblock`.
- Can trigger a chain reorganization if the reconsidered block is valid.

---

## Related Commands
- [`invalidateblock`](./invalidateblock.md): Mark a block as invalid. 