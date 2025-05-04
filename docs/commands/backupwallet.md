# `backupwallet`

**Summary:**
Safely copies wallet.dat to a specified destination filename.

**Category:**
Wallet

---

## Description
The `backupwallet` command safely copies the `wallet.dat` file to a specified destination filename. This command is useful for creating a backup of the wallet data. The destination file is saved in the directory set by the `-exportdir` option.

---

## Usage
```bash
backupwallet "destination"
```

---

## Arguments
| Name        | Type   | Required | Description                                                                 |
|-------------|--------|----------|-----------------------------------------------------------------------------|
| destination | string | Yes      | The destination filename, saved in the directory set by the `-exportdir` option. |

---

## Result
Returns a string representing the full path of the destination file.

---

## Examples
```bash
# Backup the wallet data to a file
verus backupwallet "backupdata"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "backupwallet", "params": ["backupdata"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- None.

---

## Related Commands
- [`dumpwallet`](./dumpwallet.md): Dumps taddr wallet keys in a human-readable format. 