# `assetchainproof`

> ⚠️ **Unverified Documentation**  
> This command is partially or minimally documented based on community sources or naming conventions. Confirm usage before relying on it. Contributions welcome.

Retrieves a proof object for a transaction on an asset (PBaaS) chain. Typically used in cross-chain operations, such as verifying or submitting imports.

---

## 🔧 Usage
```bash
verus assetchainproof <txid>
```

> ⚠️ The full syntax and optional parameters are **not yet documented**.

---

## 🧾 Arguments

| Name   | Type   | Description                         |
|--------|--------|-------------------------------------|
| `txid` | string | Transaction ID to retrieve proof for |

---

## ✅ Examples

```bash
verus assetchainproof a3b1...78cd
```

---

## ⚠️ Notes
- Used in **PBaaS notarization or import flows**
- Expected to return a merkle or notarization proof object
- May require a fully synced local node

---

## 🚧 Status
This command is currently **minimally documented**.
Please refer to community channels or developer forums for advanced usage.

---

## 🔗 Related Commands
- [`submitimports`](./submitimports.md)
- [`getnotarizationdata`](./getnotarizationdata.md)
- [`getimports`](./getimports.md)

---

## 📚 Source Reference
- `wiki_verus_io.md