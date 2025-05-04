# `z_shieldcoinbase`

**Summary:**
(DEPRECATED, not necessary on Verus or standard PBaaS networks) Shields transparent coinbase funds by sending them to a shielded z-address. Used to enhance privacy by moving mining/staking rewards from transparent to shielded addresses.

**Category:**
Wallet

---

## Description
`z_shieldcoinbase` was originally used to shield transparent coinbase (mined/staked) funds by sending them to a shielded (z-)address. This process increases privacy by moving rewards from transparent addresses to shielded ones. **On Verus and standard PBaaS networks, this command is deprecated and not necessary, as protocol-level privacy and coinbase handling have evolved.**

This is an asynchronous operation: selected UTXOs are locked during shielding, and unlocked if an error occurs. Use `listlockunspent` to view locked UTXOs.

---

## Usage
```bash
verus z_shieldcoinbase "<fromaddress>" "<tozaddress>" [fee] [limit]
```
- `<fromaddress>`: t-address or "*" for all wallet t-addrs (string, required)
- `<tozaddress>`: destination z-address (string, required)
- `[fee]`: transaction fee (numeric, optional, default=0.0001)
- `[limit]`: max UTXOs to shield (numeric, optional, default=50)

---

## Arguments
| Name         | Type    | Required | Description                                                                 |
|--------------|---------|----------|-----------------------------------------------------------------------------|
| fromaddress  | string  | Yes      | Source t-address or "*" for all wallet t-addrs                              |
| tozaddress   | string  | Yes      | Destination z-address                                                       |
| fee          | number  | No       | Fee to attach to the transaction (default: 0.0001)                          |
| limit        | number  | No       | Max UTXOs to shield (default: 50; 0 uses node option or max per transaction)|

---

## Result
Returns a JSON object:
```
{
  "remainingUTXOs": xxx,    // Number of coinbase UTXOs still available for shielding
  "remainingValue": xxx,    // Value of coinbase UTXOs still available for shielding
  "shieldingUTXOs": xxx,    // Number of coinbase UTXOs being shielded
  "shieldingValue": xxx,    // Value of coinbase UTXOs being shielded
  "opid": "..."             // Operation ID for use with z_getoperationstatus
}
```

---

## Examples
```bash
# Shield all coinbase funds from all t-addrs to a z-addr
verus z_shieldcoinbase "*" "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"

# Using JSON-RPC via curl
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_shieldcoinbase", "params": ["RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV", "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- **DEPRECATED:** This command is not necessary on Verus or standard PBaaS networks due to protocol-level privacy improvements.
- Shielding coinbase funds is only required on legacy networks or for compatibility with older workflows.
- The operation is asynchronous; use `z_getoperationstatus` with the returned `opid` to check progress.
- UTXOs selected for shielding are locked during the operation; use `listlockunspent` to view locked UTXOs.
- Transaction size and UTXO limits are constrained by consensus rules (see help text for details).

---

## Related Commands
- [`z_getoperationstatus`](./z_getoperationstatus.md): Check status of asynchronous operations.
- [`listlockunspent`](./listlockunspent.md): List locked UTXOs.
- [`z_sendmany`](./z_sendmany.md): Send funds to multiple shielded or transparent addresses. 