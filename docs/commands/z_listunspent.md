# `z_listunspent`

**Summary:**
Returns an array of unspent shielded notes (UTXOs) in the wallet, filtered by confirmation count and optionally by address. Supports advanced privacy management and auditing for shielded funds.

**Category:**
Wallet

---

## Description
`z_listunspent` provides a detailed list of all unspent shielded notes (Sprout and Sapling) in your wallet, filtered by minimum and maximum confirmations and, optionally, by specific shielded addresses. This command is essential for users who need to audit, manage, or construct privacy-preserving transactions, and for advanced wallet management workflows.

---

## Usage
```bash
verus z_listunspent [minconf] [maxconf] [includeWatchonly] ["zaddr",...]
```
- `minconf`: Minimum confirmations (numeric, optional, default=1)
- `maxconf`: Maximum confirmations (numeric, optional, default=9999999)
- `includeWatchonly`: Include watchonly addresses (bool, optional, default=false)
- `["zaddr",...]`: Array of shielded addresses to filter (optional)

---

## Arguments
| Name              | Type    | Required | Description                                                                 |
|-------------------|---------|----------|-----------------------------------------------------------------------------|
| minconf           | number  | No       | Minimum confirmations to filter (default: 1)                                |
| maxconf           | number  | No       | Maximum confirmations to filter (default: 9999999)                          |
| includeWatchonly  | bool    | No       | Include watchonly addresses (default: false)                                |
| addresses         | array   | No       | Array of zaddrs (Sprout/Sapling) to filter                                  |

---

## Result
Returns an array of objects, each representing an unspent note:
```
{
  "txid": "...",
  "jsindex": n,         // Sprout only
  "jsoutindex": n,      // Sprout only
  "outindex": n,        // Sapling only
  "confirmations": n,
  "spendable": true|false,
  "address": "...",
  "amount": xxxxx,
  "memo": "...",
  "change": true|false
}
```

---

## Examples
```bash
verus z_listunspent
verus z_listunspent 6 9999999 false '["ztbx5DLDxa5ZLFTchHhoPNkKs57QzSyib6UqXpEdy76T1aUdFxJt1w9318Z8DJ73XzbnWHKEZP9Yjg712N5kMmP4QzS9iC9","ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"]'
```

---

## Notes
- Supports both Sprout and Sapling shielded addresses.
- Watchonly addresses require prior import of viewing keys.
- Useful for advanced wallet management, auditing, and privacy workflows.

---

## Related Commands
- [`z_listreceivedbyaddress`](./z_listreceivedbyaddress.md): List received notes for a shielded address.
- [`z_listaddresses`](./z_listaddresses.md): List all shielded addresses in the wallet. 