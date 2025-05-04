# `keypoolrefill`

**Summary:**
Fills the keypool.

**Category:**
Wallet

---

## Description
The `keypoolrefill` command refills the keypool with a specified number of keys. The keypool is a cache of pre-generated keys that the wallet uses to generate new addresses. This command is useful for ensuring that the wallet has a sufficient number of keys available for address generation.

---

## Usage
```bash
keypoolrefill ( newsize )
```

---

## Arguments
| Name    | Type    | Required | Description                                                                 |
|---------|---------|----------|-----------------------------------------------------------------------------|
| newsize | numeric | No       | The new keypool size. Default is 100.                                       |

---

## Result
This command does not return a value.

---

## Examples
```bash
# Refill the keypool with the default size
verus keypoolrefill

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "keypoolrefill", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Ensure the wallet is unlocked before using this command.

---

## Related Commands
- None. 