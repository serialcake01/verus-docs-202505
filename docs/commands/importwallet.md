# `importwallet`

**Summary:**
Imports taddr keys from a wallet dump file.

**Category:**
Wallet

---

## Description
The `importwallet` command imports transparent address (taddr) keys from a wallet dump file. This command is useful for restoring a wallet from a backup created with the `dumpwallet` command.

---

## Usage
```bash
importwallet "filename"
```

---

## Arguments
| Name     | Type   | Required | Description                                                                 |
|----------|--------|----------|-----------------------------------------------------------------------------|
| filename | string | Yes      | The wallet file to import.                                                  |

---

## Result
This command does not return a value.

---

## Examples
```bash
# Import the wallet from a dump file
verus importwallet "path/to/exportdir/nameofbackup"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importwallet", "params": ["path/to/exportdir/nameofbackup"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Ensure the wallet is unlocked before using this command.

---

## Related Commands
- [`dumpwallet`](./dumpwallet.md): Dumps all wallet keys in a human-readable format. 