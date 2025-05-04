# `decodescript`

**Summary:**
Decodes a hex-encoded script and returns its structure, type, and associated addresses. Essential for protocol analysis and transaction debugging.

**Category:**
Raw Transactions

---

## Description
`decodescript` takes a hex-encoded script and decodes it into a human-readable JSON object, revealing its structure, type, required signatures, and associated addresses. This command is essential for protocol analysis, transaction debugging, and advanced wallet operations.

---

## Usage
```bash
verus decodescript "hex"
```
- `hex`: The hex-encoded script (string, required)

---

## Arguments
| Name | Type   | Required | Description                |
|------|--------|----------|----------------------------|
| hex  | string | Yes      | The hex-encoded script     |

---

## Result
Returns a JSON object representing the script:
```
{
  "asm": "asm",
  "hex": "hex",
  "type": "type",
  "reqSigs": n,
  "addresses": [ ... ],
  "p2sh": "address"
}
```

---

## Examples
```bash
verus decodescript "hexstring"
```

---

## Notes
- Useful for protocol analysis, debugging, and advanced wallet operations.
- Reveals script type, required signatures, and associated addresses.

---

## Related Commands
- [`decoderawtransaction`](./decoderawtransaction.md): Decode a hex-encoded transaction. 