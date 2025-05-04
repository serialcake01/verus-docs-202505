# `getcurrency`

> ⚠️ **Unverified Documentation**  
> This command is based on real-world usage and documentation references. Contributions welcome to confirm full behavior and output structure.

Retrieves the full definition of a registered Verus currency or PBaaS chain. Often used after `definecurrency` to confirm successful launch and inspect currency parameters.

---

## 🔧 Usage
```bash
verus getcurrency <currency_name>
```

---

## 🧾 Arguments

| Name           | Type   | Description                                                                 |
|----------------|--------|-----------------------------------------------------------------------------|
| `currency_name`| string | The name or i-address of the currency. Use `null` to return the current chain definition |

---

## ✅ Examples

### Get definition of a launched currency:
```bash
verus getcurrency "MyBrand"
```

### Get definition of current chain:
```bash
verus getcurrency
```

---

## 🧪 Example Output (simplified)
```json
{
  "name": "MyBrand",
  "options": 32,
  "proofprotocol": 2,
  "currencies": [],
  "conversion": [],
  "launchsystemid": "vrsctest",
  "systemid": "vrsctest",
  "version": 1
}
```

---

## ⚠️ Notes
- Used to inspect currency metadata after registration
- May include system references, reserve configuration, options, and launch params
- When used on a bridge-mapped currency (e.g. `MyUSDC`), may expose mapping and gateway data
- Works on main chain or PBaaS subchains

---

## 🔗 Related Commands
- [`definecurrency`](./definecurrency.md)
- [`getcurrencystate`](./getcurrencystate.md)
- [`listcurrencies`](./listcurrencies.md)

---

## 📚 Source References
- `wiki_verus_io.md`
- `docs_verus_io_currencies_launch_currency_html.md`
- Medium launch guides
