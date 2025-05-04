# `zcrawjoinsplit`

**Summary:**
Performs a join-split operation on raw transaction data.

**Category:**
Raw Transactions

---

## Description
The `zcrawjoinsplit` command is used to perform a join-split operation on raw transaction data. This command is essential for creating shielded transactions that combine multiple inputs and outputs, ensuring privacy and confidentiality.

---

## Usage
```bash
zcrawjoinsplit "rawtx" "inputs" "outputs"
```

---

## Arguments
| Name   | Type   | Required | Description                                      |
|--------|--------|----------|--------------------------------------------------|
| rawtx  | string | Yes      | The raw transaction data to be processed.        |
| inputs | array  | Yes      | An array of input objects for the join-split.    |
| outputs| array  | Yes      | An array of output objects for the join-split.   |

---

## Result
Returns the modified raw transaction data as a hex-encoded string.

---

## Examples
```bash
# Perform a join-split operation on raw transaction data
verus zcrawjoinsplit "rawtxdata" "[{\"txid\":\"id\",\"vout\":n}]" "[{\"address\":\"addr\",\"amount\":x.xx}]"
```

---

## Notes
- This command is intended for advanced users who need to construct shielded transactions manually.

---

## Related Commands
- [`decoderawtransaction`](./decoderawtransaction.md): Decode a raw transaction hex string. 