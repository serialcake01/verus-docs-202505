# `definecurrency`

Define a new Verus currency, token, or full PBaaS blockchain. This command enables launching custom assets with flexible configurations including reserve backing, fractional ownership, mint/burn rules, or mapping to external tokens like ERC-20s.

---

## 🔧 Usage
```bash
verus definecurrency '<currency-definition-json>'
```

- Requires a valid VerusID with launch rights
- Wallet must be unlocked
- All parameters must be encoded as a single JSON string argument

---

## 🧾 Arguments
| Name | Type | Description |
|------|------|-------------|
| `name` | string | Unique name for the currency/token/chain |
| `options` | integer | Bitfield for type (token, fractional, NFT, PBaaS) |
| `proofprotocol` | integer | 2 = centralized mint/burn, 3 = external bridge (e.g. ERC-20) |
| `currencies` | array | Reserve currencies used for fractional backing (optional) |
| `conversions` | array | Weights or ratios used in multi-reserve models (optional) |
| `eras` | array | Emission schedule: reward, halving, decay, etc. (PBaaS only) |
| `notaries` | array | List of VerusIDs that notarize the chain (PBaaS only) |
| `launchsystemid`, `systemid`, `parent` | string | For bridge tokens or child chains, defines location in the chain hierarchy |
| `nativecurrencyid` | object | For bridge mappings: external token reference |
| `preallocations` | array | (Optional) Direct allocation of initial supply |

---

## ✅ Examples

### Launch a Simple Token:
```bash
verus definecurrency '{
  "name":"MyBrand",
  "options":32,
  "proofprotocol":2,
  "preallocations":[{"Klaus@":100}]
}'
```

### Define a Fractional Multi-Reserve Currency:
```bash
verus definecurrency '{
  "name":"CommunityToken",
  "options":64,
  "currencies":["VRSC", "Dai.vETH"],
  "conversions":[1,1]
}'
```

### Launch a Full PBaaS Blockchain:
```bash
verus definecurrency '{
  "name":"PBaaSChain",
  "options":264,
  "currencies":["VRSCTEST"],
  "conversions":[1],
  "eras":[{"reward":1200000000,"decay":0,"halving":0,"eraend":0}],
  "notaries":["Notary1","Notary2"]
}'
```

### Define a Mapped ERC-20:
```bash
verus definecurrency '{
  "name":"MyUSDC",
  "options":32,
  "systemid":"veth",
  "parent":"vrsctest",
  "launchsystemid":"vrsctest",
  "nativecurrencyid":{
    "type":9,
    "address":"0x98339D8C260052B7ad81c28c16C0b98420f2B46a"
  },
  "proofprotocol":3
}'
```

---

## ⚠️ Notes & Warnings
- Requires an unlocked wallet and ownership of a VerusID
- Launch fees are paid from the root VerusID used
- PBaaS chains require correct configuration or launch will fail
- Bitflags (`options`) must be used carefully — invalid combos will silently fail or result in unusable assets

---

## 🔗 Related Commands
- [`getcurrency`](./getcurrency.md)
- [`listcurrencies`](./listcurrencies.md)
- [`registeridentity`](./registeridentity.md)
- [`submitimports`](./submitimports.md)
- [`convertreserves`](./convertreserves.md)

---

## 📚 Source References
- `wiki_verus_io.md`
- `docs_verus_io_currencies_launch_currency_html.md`
- `docs_verus_io_blockchains_define_pbaas_html.md`
- `medium_com_veruscoin_*` launch guides
