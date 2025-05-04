# `zcrawpour`

**Summary:**
Executes a pour operation on raw transaction data.

**Category:**
Raw Transactions

---

## Description
The `zcrawpour` command is used to execute a pour operation on raw transaction data. This command is crucial for creating shielded transactions that transfer value between shielded addresses, ensuring privacy and confidentiality.

---

## Usage
```bash
zcrawpour "rawtx" "pourdetails"
```

---

## Arguments
| Name        | Type   | Required | Description                                      |
|-------------|--------|----------|--------------------------------------------------|
| rawtx       | string | Yes      | The raw transaction data to be processed.        |
| pourdetails | object | Yes      | An object containing details for the pour operation. |

---

## Result
Returns the modified raw transaction data as a hex-encoded string.

---

## Examples
```bash
# Execute a pour operation on raw transaction data
verus zcrawpour "rawtxdata" "{\"details\":\"pourdetails\"}"
```

---

## Notes
- This command is intended for advanced users who need to construct shielded transactions manually.

---

## Related Commands
- [`decoderawtransaction`](./decoderawtransaction.md): Decode a raw transaction hex string. 