# `addmergedblock`

Adds a fully prepared block and its header to the local merge mining queue. Typically used by third-party orchestrators or parent chains that perform merged mining with Verus.

---

## 🔧 Usage
```bash
verus addmergedblock "<hexdata>" [json_parameters_object]
```

- `hexdata` must be a raw block (serialized) in hex format
- Optionally accepts a JSON object with metadata about the block

---

## 🧾 Arguments

| Name                  | Type   | Description                                        |
|-----------------------|--------|----------------------------------------------------|
| `hexdata`             | string | Serialized block header+data in hex               |
| `jsonparametersobject` | object | Optional. Includes merge-mining flags or metadata |

---

## ✅ Examples

### Submit a merged block
```bash
verus addmergedblock "04fdb1...ab9e"
```

### Submit with metadata
```bash
verus addmergedblock "04fdb1...ab9e" '{"source": "auxpow", "targetheight": 5000}'
```

---

## ⚠️ Notes & Warnings
- Requires a correctly formatted block that meets Verus rules
- Used in advanced mining setups — **not required for solo or pooled mining**
- Invalid or mistimed blocks may be ignored by the node
- Your node must be running in a mode that supports merged mining

---

## 🔗 Related Commands
- [`getblocktemplate`](./getblocktemplate.md)
- [`submitblock`](./submitblock.md)
- [`getmininginfo`](./getmininginfo.md)

---

## 📚 Source References
- `wiki_verus_io.md`
