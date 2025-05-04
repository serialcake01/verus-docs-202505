# `clearrawmempool`

> ⚠️ **Unverified Documentation**  
> This command is minimally documented and based on Discord usage and community context. Confirm usage before relying on it. Contributions welcome.

Clears the node's current raw memory pool (mempool) of all unconfirmed transactions. Primarily used when a node is stuck due to chain reorgs, failed PBaaS imports, or mempool-related corruption.

---

## 🔧 Usage
```bash
verus clearrawmempool
```

Supports use on alternate chains:
```bash
verus -chain=varrr clearrawmempool
```

---

## 🧾 Arguments

This command takes no arguments.

---

## ✅ Examples

```bash
verus clearrawmempool
```

```bash
verus -chain=varrr clearrawmempool
```

Often paired with:
```bash
verus clearbanned
verus reconsiderblock <blockhash>
```

---

## ⚠️ Notes
- **All unconfirmed transactions will be discarded**
- Does not affect confirmed transactions or the blockchain state
- Often used to recover from reorg loops or import failures on PBaaS chains
- May help resolve stuck daemons or stalled syncing nodes

---

## 🔗 Related Commands
- [`clearbanned`](./clearbanned.md)
- [`reconsiderblock`](./reconsiderblock.md)
- [`submitimports`](./submitimports.md)

---

## 📚 Source References
- Verus Discord recovery threads (2024–2025)
