# addnode

## Summary
Attempts to add or remove a node from the addnode list, or try a connection to a node once.

## Category
Network

## Description
The `addnode` command is used to manage the list of manually added nodes. It allows you to add a node to the list, remove a node from the list, or attempt a one-time connection to a node. This is useful for controlling network connections and testing connectivity.

## Usage
```
verus addnode "node" "add|remove|onetry"
```

## Arguments
| Name     | Type    | Required | Description |
|----------|---------|----------|-------------|
| `node`   | string  | Yes      | The node to add, remove, or connect to once (see `getpeerinfo` for nodes). |
| `command`| string  | Yes      | 'add' to add a node to the list, 'remove' to remove a node from the list, 'onetry' to try a connection to the node once. |

## Result
This command does not return a value but modifies the addnode list or attempts a connection.

## Examples
```
verus addnode "192.168.0.6:8233" "onetry"
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addnode", "params": ["192.168.0.6:8233", "onetry"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- Use this command to manage and test network connections effectively.

## Related Commands
- `getaddednodeinfo`
- `disconnectnode` 