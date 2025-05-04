# getaddednodeinfo

## Summary
Returns information about the given added node, or all added nodes.

## Category
Network

## Description
The `getaddednodeinfo` command provides information about added nodes. It can return details for a specific node or all nodes, including connection status and address information. This is useful for managing and monitoring manually added nodes in the network.

## Usage
```
verus getaddednodeinfo dns ( "node" )
```

## Arguments
| Name  | Type    | Required | Description |
|-------|---------|----------|-------------|
| `dns` | boolean | Yes      | If false, only a list of added nodes will be provided; if true, connected information will also be available. |
| `node`| string  | No       | If provided, return information about this specific node; otherwise, all nodes are returned. |

## Result
The command returns an array of objects, each representing an added node with fields such as:
- `addednode`: The node IP address (string)
- `connected`: Connection status (boolean)
- `addresses`: List of addresses with connection details (array)

## Examples
```
verus getaddednodeinfo true
```
```
verus getaddednodeinfo true "192.168.0.201"
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddednodeinfo", "params": [true, "192.168.0.201"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- This command is useful for verifying the status and details of manually added nodes.

## Related Commands
- `addnode`
- `getnetworkinfo` 