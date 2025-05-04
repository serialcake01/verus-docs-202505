# `getcurrencystate`

> ⚠️ **Unverified Documentation**  
> This command is derived from Discord discussions, API usage patterns, and observed structure. Use with caution. Contributions welcome.

Returns the live or historical state of a Verus currency, including reserve ratios, liquidity, and price/volume data. Supports querying a block range with an interval for OHLC-style time series conversion data.

---

## 🔧 Usage
```bash
verus getcurrencystate <currency> [blockrange] [volumecurrency]
```

---

## 🧾 Arguments

| Name            | Type   | Description                                                                 |
|-----------------|--------|-----------------------------------------------------------------------------|
| `currency`      | string | Name or i-address of the currency                                          |
| `blockrange`    | string | Optional. Format: `startblock,endblock,interval` (e.g. `3000000,3100000,1440`) |
| `volumecurrency`| string | Optional. Currency in which to express volume (e.g. `VRSC`)                 |

---

## ✅ Examples

### Get current state of a currency:
```bash
verus getcurrencystate "bridge.veth"
```

### Get OHLC conversion data over 1-day intervals:
```bash
verus getcurrencystate "bridge.veth" "3200000,3300000,1440" "dai.veth"
```

### Use in TradingView integration:
- Treat each conversion pair (A → B vs B → A) as distinct markets
- Reverse prices to normalize when combining volume/price across directions

---

## 🧪 Example Result Snippet
```json
{
  "currencyid": "bridge.veth",
  "block": 3200000,
  "conversiondata": [
    {
      "open": 1.02,
      "high": 1.05,
      "low": 1.00,
      "close": 1.03,
      "volume": 1523.54
    },
    ...
  ]
}
```

---

## ⚠️ Notes
- May error out if the requested block range is too wide (e.g. entire chain history)
- Pricing is directional: `A→B` ≠ `B→A`
- Uses `lastconversionprice`, `viaconversionprice`, and `priceinreserve` in its output
- `blocktime` may refer to **query time**, not actual block timestamp — verify independently

---

## 🔗 Related Commands
- [`getcurrency`](./getcurrency.md)
- [`getcurrencyconverters`](./getcurrencyconverters.md)
- [`submitimports`](./submitimports.md)

---

## 📚 Source References
- Verus Discord (Feb–Apr 2025 threads)
- API usage patterns from Verus Market integrations
