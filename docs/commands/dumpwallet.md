# `dumpwallet`

**Summary:**
Dumps taddr wallet keys in a human-readable format.

**Category:**
Wallet

---

## Description
The `dumpwallet` command dumps transparent address (taddr) wallet keys in a human-readable format. This command is useful for creating a backup of wallet keys. Overwriting an existing file is not permitted.

---

## Usage
```bash
dumpwallet "filename" (omitemptytaddresses)
```

---

## Arguments
| Name                | Type    | Required | Description                                                                 |
|---------------------|---------|----------|-----------------------------------------------------------------------------|
| filename            | string  | Yes      | The filename, saved in the folder set by the `verusd -exportdir` option.    |
| omitemptytaddresses | boolean | No       | Defaults to false. If true, export only addresses with indexed UTXOs or that control IDs in the wallet. |

---

## Result
Returns a string representing the full path of the destination file.

---

## Examples
```bash
# Dump the wallet keys to a file
verus dumpwallet "test"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- Overwriting an existing file is not permitted.

---

## Related Commands
- [`importwallet`](./importwallet.md): Imports taddr keys from a wallet dump file. 