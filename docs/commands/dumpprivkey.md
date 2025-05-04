# `dumpprivkey`

**Summary:**
Reveals the private key corresponding to a transparent address.

**Category:**
Wallet

---

## Description
The `dumpprivkey` command reveals the private key corresponding to a specified transparent address (t-addr). This command is useful for exporting private keys for backup or transfer purposes. The private key can then be imported using the `importprivkey` command.

---

## Usage
```bash
dumpprivkey "t-addr"
```

---

## Arguments
| Name   | Type   | Required | Description                                                                 |
|--------|--------|----------|-----------------------------------------------------------------------------|
| t-addr | string | Yes      | The transparent address for the private key.                                |

---

## Result
Returns a string representing the private key.

---

## Examples
```bash
# Reveal the private key for a transparent address
verus dumpprivkey "myaddress"

# Import the private key
verus importprivkey "mykey"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpprivkey", "params": ["myaddress"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- None.

---

## Related Commands
- [`importprivkey`](./importprivkey.md): Adds a private key to your wallet. 