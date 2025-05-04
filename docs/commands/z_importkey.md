# `z_importkey`

**Summary:**
Adds a zkey (as returned by `z_exportkey`) to your wallet, enabling full control over the associated shielded address. Supports privacy-preserving fund management and recovery.

**Category:**
Wallet

---

## Description
`z_importkey` allows you to import a Sprout or Sapling spending key (zkey), granting your wallet full control over the associated shielded address. This is essential for wallet recovery, migration, and advanced privacy workflows. You can control whether the wallet rescans the blockchain for historical transactions and specify the starting block height for the rescan.

---

## Usage
```bash
verus z_importkey "zkey" [rescan] [startHeight]
```
- `zkey`: The spending key (string, required)
- `rescan`: Whether to rescan the blockchain (string, optional, default="whenkeyisnew")
- `startHeight`: Block height to start rescan from (numeric, optional, default=0)

---

## Arguments
| Name        | Type    | Required | Description                                                      |
|-------------|---------|----------|------------------------------------------------------------------|
| zkey        | string  | Yes      | The spending key (see `z_exportkey`)                             |
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
verus z_importkey "mykey"
verus z_importkey "mykey" no
verus z_importkey "mykey" whenkeyisnew 30000
```

---

## Notes
- Rescanning can take several minutes if enabled.
- Grants full spend authority over the imported address.
- Useful for wallet recovery, migration, and advanced privacy workflows.

---

## Related Commands
- [`z_exportkey`](./z_exportkey.md): Export a spending key for a shielded address.
- [`z_listaddresses`](./z_listaddresses.md): List all shielded addresses in the wallet. 