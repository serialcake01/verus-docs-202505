# `z_importviewingkey`

**Summary:**
Adds a viewing key (as returned by `z_exportviewingkey`) to your wallet, enabling the wallet to view incoming transactions for the associated shielded address. Supports privacy-preserving auditing and watch-only workflows.

**Category:**
Wallet

---

## Description
`z_importviewingkey` allows you to import a Sprout or Sapling viewing key, enabling your wallet to detect and view incoming transactions for the associated shielded address. This is essential for watch-only wallets, auditing, and compliance workflows. You can control whether the wallet rescans the blockchain for historical transactions and specify the starting block height for the rescan.

---

## Usage
```bash
verus z_importviewingkey "vkey" [rescan] [startHeight]
```
- `vkey`: The viewing key (string, required)
- `rescan`: Whether to rescan the blockchain (string, optional, default="whenkeyisnew")
- `startHeight`: Block height to start rescan from (numeric, optional, default=0)

---

## Arguments
| Name        | Type    | Required | Description                                                      |
|-------------|---------|----------|------------------------------------------------------------------|
| vkey        | string  | Yes      | The viewing key (see `z_exportviewingkey`)                       |
| rescan      | string  | No       | Rescan option: "yes", "no", or "whenkeyisnew" (default)         |
| startHeight | number  | No       | Block height to start rescan from (default: 0)                   |

---

## Result
Returns an object:
```
{
  "type": "sprout|sapling",
  "address": "address|DefaultAddress"
}
```

---

## Examples
```bash
verus z_importviewingkey "vkey"
verus z_importviewingkey "vkey" no
verus z_importviewingkey "vkey" whenkeyisnew 30000
```

---

## Notes
- Rescanning can take several minutes if enabled.
- Only incoming transactions are visible; spends are not detected with viewing keys.
- Useful for watch-only wallets, auditing, and compliance.

---

## Related Commands
- [`z_exportviewingkey`](./z_exportviewingkey.md): Export a viewing key for a shielded address.
- [`z_listaddresses`](./z_listaddresses.md): List all shielded addresses in the wallet. 