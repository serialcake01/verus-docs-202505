# `calc_MoM`

> ⚠️ **Unverified Documentation**  
> This command is partially or minimally documented based on community sources or naming conventions. Confirm usage before relying on it. Contributions welcome.

Calculates a Merkle of Merkle roots (MoM) for a given block height. Typically used in notarization and cross-chain proof scenarios to anchor multiple blocks' Merkle roots into a single summary root.

---

## 🔧 Usage
```bash
verus calc_MoM <height> <MoMdepth>
```

---

## 🧾 Arguments

| Name        | Type   | Description                                |
|-------------|--------|--------------------------------------------|
| `height`    | number | Target block height to anchor              |
| `MoMdepth`  | number | Number of blocks to include in MoM window  |

---

## ✅ Examples
```bash
verus calc_MoM 150000 30
```

---

## ⚠️ Notes
- Used primarily by notary or chainproof tools
- `MoMdepth` determines how far back to include blocks in the MoM calculation
- Likely returns a Merkle root hash and associated proof metadata

---

## 🔗 Related Commands
- [`getnotarizationdata`](./getnotarizationdata.md)
- [`assetchainproof`](./assetchainproof.md)
- [`submitimports`](./submitimports.md)

---

## 📚 Source Reference
- `wiki_verus_io.md`
