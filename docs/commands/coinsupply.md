# `coinsupply`

> ⚠️ **Unverified Documentation**  
> This command is based on confirmed output and community documentation. Please verify behaviors in production environments. Contributions welcome.

Returns a detailed breakdown of the circulating coin supply at a specific block height. If no height is provided, the current height is used. Frequently used by explorers and API services.

---

## 🔧 Usage
```bash
verus coinsupply [height]
```

---

## 🧾 Arguments

| Name     | Type   | Description                                                        |
|----------|--------|--------------------------------------------------------------------|
| `height` | number | Optional. Block height to evaluate. Uses current height if omitted |

---

## ✅ Examples

### Get current supply
```bash
verus coinsupply
```

### Get supply at block height 100000
```bash
verus coinsupply 100000
```

### RPC format
```bash
curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "coinsupply", "params": [] }' \
     -H 'content-type: text/plain;' https://api.verus.services/
```

---

## 🧪 Example Output
```json
{
  "result": "success",
  "coin": "VRSC",
  "height": 100000,
  "supply": 27149445.88493159,
  "immature": 26341923.9315538,
  "zfunds": 5780.1730471,
  "total": 27155226.05797869
}
```

---

## ⚠️ Notes
- This command is **computationally expensive** and can time out
- It is common to "prime" this command after daemon start to cache results:
```bash
while [[ ! $(verus coinsupply) ]]; do printf "%s: not finished getting coinsupply\n" "$(date '+[%F %T]')"; done
```
- Used extensively by API nodes and block explorers
- Result is faster on second use due to memory caching

---

## 🔗 Related Commands
- [`getsnapshot`](./getsnapshot.md)
- [`getblockchaininfo`](./getblockchaininfo.md)
- [`getinfo`](./getinfo.md)

---

## 📚 Source References
- `wiki_verus_io.md`
- Verus Discord operations channels (2024–2025)
