# `z_getnewaddress`

**Summary:**
Returns a new shielded address (Sprout or Sapling) for receiving payments. Supports privacy-preserving fund management and address rotation.

**Category:**
Wallet

---

## Description
`z_getnewaddress` generates a new shielded address (Sprout or Sapling) for your wallet, enabling you to receive private payments. By default, a Sapling address is created, but you can specify the type. This command is essential for privacy management, address rotation, and advanced wallet workflows.

---

## Usage
```bash
verus z_getnewaddress [type]
```
- `type`: The type of address to generate (string, optional, default="sapling"). One of ["sprout", "sapling"].

---

## Arguments
| Name  | Type    | Required | Description                                         |
|-------|---------|----------|-----------------------------------------------------|
| type  | string  | No       | The type of address: "sprout" or "sapling" (default: "sapling") |

---

## Result
Returns a new shielded address (string).

---

## Examples
```bash
verus z_getnewaddress
verus z_getnewaddress sapling
```

---

## Notes
- Sapling addresses are recommended for new privacy workflows.
- Use address rotation for enhanced privacy.

---

## Related Commands
- [`z_listaddresses`](./z_listaddresses.md): List all shielded addresses in the wallet.
- [`z_getbalance`](./z_getbalance.md): Get the balance for a specific address. 