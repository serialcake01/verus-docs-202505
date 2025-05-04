# disconnectnode

## Summary
Immediately disconnects from the specified node.

## Category
Network

## Description
The `disconnectnode` command is used to immediately terminate the connection with a specified node. This can be useful for managing network connections and ensuring that only desired nodes remain connected.

## Usage
```
verus disconnectnode "node"
```

## Arguments
| Name  | Type    | Required | Description |
|-------|---------|----------|-------------|
| `node`| string  | Yes      | The node to disconnect from (see `getpeerinfo` for nodes). |

## Result
This command does not return a value but disconnects the specified node.

## Examples
```
verus disconnectnode "192.168.0.6:8233"
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "disconnectnode", "params": ["192.168.0.6:8233"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- Use this command to manage and control network connections effectively.

## Related Commands
- `getpeerinfo`
- `addnode` 