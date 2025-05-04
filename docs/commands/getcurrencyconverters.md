# `getcurrencyconverters`

> ✅ **Verified Documentation**  
> This documentation is based on `docs.verus.io`, Discord references, and confirmed CLI behavior.

Returns a list of **converter basket currencies** that enable conversion between a source and target currency. These converters are typically fractional currencies used for routing cross-chain or reserve-based conversions.

---

## 🔧 Usage
```bash
verus getcurrencyconverters <fromcurrency> <convertto>
```

---

## 🧾 Arguments

| Name           | Type   | Description                                                              |
|----------------|--------|--------------------------------------------------------------------------|
| `fromcurrency` | string | Currency to convert from (friendly name or i-address)                   |
| `convertto`    | string | Currency to convert to (friendly name or i-address)                     |

---

## ✅ Examples

### Get converter routes for VRSC to Dai.vETH:
```bash
verus getcurrencyconverters VRSC Dai.vETH
```

### Bash + jq pattern to extract converter names:
```bash
verus getcurrencyconverters VRSC Dai.vETH | jq -r '.[] | .fullyqualifiedname'
```

---

## 🧪 Example Output (simplified)
```json
[
  {
    "bridge.veth": {
      "name": "Bridge.vETH",
      "currencyid": "i3f7tS...",
      "systemid": "i5w5Mu...",
      "proofprotocol": 1,
      "startblock": 2758800,
      "endblock": 0
    }
  }
]
```

---

## ⚠️ Notes
- Filters by default to **≥1000 VRSC reserve** and **≥10% reserve ratio**
- Returns fractional currencies that support cross/reserve conversion
- Used by Verus Mobile to construct universal QR payment routing
- Often paired with `estimateconversion` to determine most efficient route
- Output includes both friendly names and `i-address` identifiers

---

## 🔗 Related Commands
- [`estimateconversion`](./estimateconversion.md)
- [`getcurrencystate`](./getcurrencystate.md)
- [`getcurrency`](./getcurrency.md)
- [`sendcurrency`](./sendcurrency.md)

---

## 📚 Source References
- `docs_verus_io_sendcurrency_sendcurrency_examples_html.md`
- Verus Discord (2024–2025)
- Routing scripts and integration patterns
