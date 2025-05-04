# `sendcurrency`

> ⚠️ **Unverified Documentation**  
> This documentation is based on verified examples, community usage, and official Verus documentation. Contributions welcome for edge case behavior and error codes.

Initiates a currency transfer, with optional conversion, export, refund routing, and embedded data. It is the primary method for moving assets across chains, wallets, or even protocols (e.g. Ethereum).

---

## 🔧 Usage
```bash
verus sendcurrency <fromaddress> <amounts_array> [minconfirmations] [fee] [feeconfirmations] [returntxidonly]
```

---

## 🧾 Arguments

| Name                  | Type     | Description                                                                 |
|-----------------------|----------|-----------------------------------------------------------------------------|
| `fromaddress`         | string   | Address, VerusID, or wildcard (`*`, `i*`, `R*`) to fund the transaction     |
| `amounts_array`       | array    | Array of transfer instructions (see below)                                  |
| `minconfirmations`    | number   | Optional. Default = 1                                                       |
| `fee`                 | number   | Optional. Override fee in native currency                                  |
| `feeconfirmations`    | number   | Optional. Default = 1                                                       |
| `returntxidonly`      | bool     | Optional. If true, only return TXID or OPID instead of verbose output       |

Each item in `amounts_array` is an object with fields like:

| Field           | Required | Description                                                                 |
|----------------|----------|-----------------------------------------------------------------------------|
| `address`       | ✅       | Recipient address or VerusID                                                |
| `currency`      | ✅       | Currency to send                                                            |
| `amount`        | ✅       | Amount to send                                                              |
| `convertto`     | ❌       | Currency to convert into (if applicable)                                    |
| `via`           | ❌       | Intermediary basket used in conversion                                      |
| `exportto`      | ❌       | Destination chain ID for export                                             |
| `exportcurrency`| ❌       | Boolean to export the currency itself to another chain                      |
| `feecurrency`   | ❌       | Which currency to use for paying fees                                       |
| `refundto`      | ❌       | Address to refund funds in case of failure                                  |
| `data`          | ❌       | Arbitrary data or file path to attach to the transaction                    |

---

## ✅ Examples

### Basic transfer:
```bash
verus sendcurrency "iMyID@" '[{"address":"iTarget@","currency":"VRSC","amount":10}]'
```

### Conversion via bridge basket:
```bash
verus sendcurrency "*" '[{"address":"iTarget@","currency":"VRSC","convertto":"DAI.vETH","amount":50,"via":"bridge.veth"}]'
```

### Export to Ethereum:
```bash
verus sendcurrency "iMyID@" '[{
  "currency":"vUSDC",
  "amount":100,
  "address":"0xETHADDRESS",
  "exportto":"vETH",
  "feecurrency":"vETH"
}]' 1 1 true
```

### Send file as data:
```bash
verus sendcurrency "*" '[{"address":"zAddress","amount":0,"data":{"filename":"/path/to/file.png"}}]'
```

---

## 🧪 Example Result
```json
{
  "opid": "a1b2c3d4...",
  "status": "executing"
}
```

Query with:
```bash
verus z_getoperationresult '["a1b2c3d4..."]'
```

---

## ⚠️ Notes
- This command is **asynchronous** and returns an operation ID (OPID)
- Use `z_getoperationresult` or `z_getoperationstatus` to track success/failure
- Supports complex transactions including cross-chain, DeFi swaps, embedded metadata, and fee redirection
- Valid `fromaddress` values include:
  - Specific `R...` or `i...` addresses
  - VerusIDs (`myname@`)
  - Wildcards (`*`, `i*`, `R*`)

---

## 🔗 Related Commands
- [`estimateconversion`](./estimateconversion.md)
- [`getcurrencyconverters`](./getcurrencyconverters.md)
- [`z_getoperationresult`](./z_getoperationresult.md)
- [`gettransaction`](./gettransaction.md)

---

## 📚 Source References
- `docs.verus.io` example files
- Verus Discord CLI usage (2024–2025)
- Public RPC tutorials and forum walkthroughs
