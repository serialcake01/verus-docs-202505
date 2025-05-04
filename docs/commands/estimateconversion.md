# `estimateconversion`

> ✅ **Verified Documentation**  
> This documentation is based on official `docs.verus.io`, Discord usage, and CLI testing.

Simulates the outcome of a currency conversion **without actually executing it**. Returns estimated output values, fees, and pricing for a proposed `sendcurrency` transaction. Used for swap pricing, analytics, and quote generation.

---

## 🔧 Usage
```bash
verus estimateconversion '<conversion_request>'
```

Supports either a single object or an array of objects for batch simulation.

---

## 🧾 Arguments
Each conversion request is a JSON object with the following fields:

| Name        | Type    | Required | Description                                                                 |
|-------------|---------|----------|-----------------------------------------------------------------------------|
| `currency`  | string  | ✅       | Currency to convert from                                                   |
| `amount`    | number  | ✅       | Amount in source currency                                                  |
| `convertto` | string  | ✅       | Currency to convert to (must be convertible by a valid basket or pair)     |
| `via`       | string  | ❌       | Optional. Intermediate basket currency (e.g., `bridge.veth`)               |
| `preconvert`| boolean | ❌       | Convert before chain launch (for early support, default = false)           |
| `exportto`  | string  | ❌       | If included, simulates cross-chain export to a target chain                |

---

## ✅ Examples

### Simple quote:
```bash
verus estimateconversion '{"currency":"VRSC","convertto":"DAI.vETH","amount":10,"via":"bridge.veth"}'
```

### Batch estimate:
```bash
verus estimateconversion '[
  {"currency":"VRSC","convertto":"DAI.vETH","amount":10,"via":"bridge.veth"},
  {"currency":"VRSC","convertto":"DAI.vETH","amount":20,"via":"bridge.veth"}
]'
```

---

## 🧪 Example Output
```json
{
  "conversions": [
    {
      "inputcurrencyid": "i5w5Mu...",
      "netinputamount": 9.995,
      "outputcurrencyid": "iGBs4D...",
      "estimatedcurrencyout": 59.8569
    }
  ],
  "estimatedcurrencystate": {
    "currencyid": "iGBs4D...",
    "reservecurrencies": [
      {
        "currencyid": "i5w5Mu...",
        "priceinreserve": 0.206,
        "lastconversionprice": 0.206,
        "conversionfees": 0.00025
      }
    ]
  }
}
```

---

## ⚠️ Notes
- Output reflects **conversion fees**, slippage, and reserve dynamics
- Can return **negative or unrealistic outputs** if conversion is infeasible
- Very useful for routing scripts and liquidity dashboards
- Works with remote RPC nodes (e.g., `api.verus.services`) via JSON-RPC
- Used by Verus Mobile and third-party dashboards

---

## 🔗 Related Commands
- [`getcurrencyconverters`](./getcurrencyconverters.md)
- [`sendcurrency`](./sendcurrency.md)
- [`getcurrencystate`](./getcurrencystate.md)

---

## 📚 Source References
- `docs_verus_io_sendcurrency_sendcurrency_examples_html.md`
- Verus Discord (2024–2025)
- Public RPC examples from `api.verus.services`
