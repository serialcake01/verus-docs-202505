# `updateidentity`

> ✅ **Verified Documentation**  
> This documentation is based on official docs, Discord examples, and known RPC structure.

Updates an existing VerusID identity with new attributes, such as:
- Primary addresses
- Minimum signatures
- Revocation/recovery IDs
- Content multimap (e.g. for VDXF or app data)
- Signature or VDXF metadata

It supports secure updates, complex data structures, time-locking, and custom data publishing.

---

## 🔧 Usage
```bash
verus updateidentity <jsonidentity> [returntx] [tokenupdate] [feeoffer] [sourceoffunds]
```

---

## 🧾 Arguments

| Name             | Type    | Description                                                                 |
|------------------|---------|-----------------------------------------------------------------------------|
| `jsonidentity`   | object  | JSON object with the new identity data (see fields below)                  |
| `returntx`       | bool    | Optional. If true, returns raw signed TX instead of broadcasting it        |
| `tokenupdate`    | bool    | Optional. If true, uses the tokenized control token to authorize the update |
| `feeoffer`       | number  | Optional. Override fee amount                                               |
| `sourceoffunds`  | string  | Optional. Source address for fee funding                                    |

### Required Fields (within `jsonidentity`):

| Field               | Type     | Description                                                         |
|----------------------|----------|---------------------------------------------------------------------|
| `name`               | string   | VerusID name or name@ format                                        |
| `primaryaddresses`   | array    | List of addresses to set as controlling keys                        |
| `minimumsignatures` | number   | Number of signatures required to authorize actions                  |
| `flags`              | number   | Bitmask for additional identity settings                            |
| `timelock`           | number   | Optional. Block height until which ID is locked                     |
| `contentmultimap`    | object   | Optional. VDXF or custom structured content for apps, wallets, etc. |

---

## ✅ Examples

### Set new primary address and timelock:
```bash
verus updateidentity '{
  "name": "myname",
  "primaryaddresses": ["RX74ZMhkPxuzBegCeb5SX37Y8GewpXubrw"],
  "minimumsignatures": 1,
  "flags": 0,
  "timelock": 1534360
}'
```

### Update VDXF content:
```bash
verus updateidentity '{
  "name": "profileid@",
  "contentmultimap": {
    "profile_score": ["0x000A"],
    "bio": ["Hello from Verus!"]
  }
}'
```

### Add an NFT metadata block with MMR:
```bash
verus updateidentity '{
  "name": "nftid@",
  "contentmultimap": {
    "iAddress": [{
      "data": {
        "label": "kittynftdescriptor",
        "createmmr": true,
        "mmrdata": [
          {"filename": "/path/to/cat.png"},
          {"vdxfdata": {
            "vdxfkey": {
              "version": 1,
              "label": "Cat NFT",
              "mimetype": "text/plain",
              "objectdata": {"message": "This is a picture"}
            }
          }}
        ]
      }
    }]
  }
}'
```

---

## 🧪 Result
```json
{
  "txid": "abcd1234..."
}
```
If `returntx = true`, the result will be a raw signed hex transaction.

---

## ⚠️ Notes
- Must be run from the **origin chain** of the identity
- Identity must already exist in the wallet or be imported
- `contentmultimap` can use VDXF keys or app-specific strings
- Fee must be funded from a wallet with sufficient balance
- Returns an OPID if run via RPC with `returntx = false`

---

## 🔗 Related Commands
- [`registeridentity`](./registeridentity.md)
- [`z_getoperationresult`](./z_getoperationresult.md)
- [`getidentity`](./getidentity.md)
- [`signdata`](./signdata.md)

---

## 📚 Source References
- `docs_verus_io_guides_setup_vault_html.md`
- Verus Discord (2024–2025)
- Community wallet CLI usage examples