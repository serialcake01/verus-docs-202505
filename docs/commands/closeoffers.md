# `closeoffers`

> ⚠️ **Unverified Documentation**  
> This command is partially reconstructed from wiki, Discord threads, and observed behavior. Use with care. Contributions welcome.

Closes open or expired marketplace offers created via `makeoffer`. Can target specific offers by transaction ID or close all expired offers. Optionally directs the return of locked funds to specific transparent or private addresses.

---

## 🔧 Usage
```bash
verus closeoffers [offer_txid_array] [transparentorprivatefundsdestination] [privatefundsdestination]
```

---

## 🧾 Arguments

| Name                                  | Type     | Description                                                                 |
|---------------------------------------|----------|-----------------------------------------------------------------------------|
| `offer_txid_array`                    | array    | Optional. List of offer txids to close. Omit to close only expired offers. |
| `transparentorprivatefundsdestination`| address  | Optional. Transparent or private address to receive returned funds.        |
| `privatefundsdestination`            | address  | Optional. Private address for native currency refunds only.                |

---

## ✅ Examples

### Close specific offers:
```bash
verus closeoffers '["txid1", "txid2"]'
```

### Close offers and redirect funds:
```bash
verus closeoffers '["txid1"]' RSaAddressHere zs1PrivateDestinationHere
```

### Close all expired offers:
```bash
verus closeoffers
```

---

## ⚠️ Notes
- Offers that are no longer valid or expired will always be closed.
- If no txids are specified, only expired offers are affected.
- Parameters are **optional**, but without txids, the command may appear to do nothing unless expired offers exist.
- Can be paired with `listopenoffers` and `makeoffer`.

---

## 🔗 Related Commands
- [`makeoffer`](./makeoffer.md)
- [`takeoffer`](./takeoffer.md)
- [`listopenoffers`](./listopenoffers.md)
- [`getoffers`](./getoffers.md)

---

## 📚 Source References
- `wiki_verus_io.md`
- `docs_verus_io_verusid.md`
- Verus Discord threads (2024–2025)
