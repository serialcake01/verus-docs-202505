# `registeridentity`

> ✅ **Verified Documentation**  
> This documentation is derived from official CLI usage, uploaded examples, and validated Discord workflows.

Registers a new identity on the Verus blockchain using a prior name commitment. This is the final step in creating a VerusID and requires:
- A valid name reservation (via `registernamecommitment`)
- An identity object defining control and metadata

---

## 🔧 Usage
```bash
verus registeridentity <jsonidregistration> [returntx] [feeoffer] [sourceoffunds]
```

---

## 🧾 Arguments

| Name              | Type    | Description                                                                 |
|-------------------|---------|-----------------------------------------------------------------------------|
| `jsonidregistration` | object | Required. Includes `txid`, `namereservation`, and `identity`               |
| `returntx`        | bool    | Optional. If true, returns raw transaction hex instead of sending it       |
| `feeoffer`        | number  | Optional. Override default identity fee (must meet minimum fee threshold)  |
| `sourceoffunds`   | string  | Optional. Wallet address to fund fee from                                   |

### Structure of `jsonidregistration`
```json
{
  "txid": "...",
  "namereservation": {
    "version": 1,
    "name": "idname",
    "salt": "hexvalue",
    "referral": "optionalreferrer",
    "parent": "parentid (optional)",
    "nameid": "resolved identity id"
  },
  "identity": {
    "name": "idname[.parent]",
    "primaryaddresses": ["R..."],
    "minimumsignatures": 1,
    "privateaddress": "zs..." (optional)
  }
}
```

---

## ✅ Examples

### Register identity on PBaaS chain:
```bash
verus -chain=chips registeridentity '{
  "txid": "4a9d...",
  "namereservation": {
    "version": 1,
    "name": "myid",
    "salt": "...",
    "referral": "",
    "parent": "iJhCez...",
    "nameid": "iXYZ..."
  },
  "identity": {
    "name": "myid",
    "primaryaddresses": ["R..."],
    "minimumsignatures": 1
  }
}' "" "1" "R..."
```

---

## 🧪 Result
```json
{
  "txid": "b2f1a8fabc..."
}
```

---

## ⚠️ Notes
- Identity creation **must match** the original reservation (name, parent, salt, referral, etc.)
- Fails if reservation data is invalid, reused, or malformed
- Requires correct minimum fee (e.g., 77.69689212 on CHIPS)
- Identity must not already be on-chain or you’ll receive a `nameid conflict` or `invalid commitment` error
- Often used immediately after `registernamecommitment`

---

## 🔗 Related Commands
- [`registernamecommitment`](./registernamecommitment.md)
- [`updateidentity`](./updateidentity.md)
- [`getidentity`](./getidentity.md)
- [`z_getoperationresult`](./z_getoperationresult.md)

---

## 📚 Source References
- `docs_verus_io_guides_setup_vault_html.md`
- Verus Discord (2024–2025)
- Community RPC and CLI command sequences