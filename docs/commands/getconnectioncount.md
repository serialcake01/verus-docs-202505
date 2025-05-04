# getconnectioncount

## Summary
Returns the number of connections to other nodes.

## Category
Network

## Description
The `getconnectioncount` command provides the total number of connections to other nodes in the network. This is useful for understanding the network's connectivity and ensuring that the node is properly connected to the network.

## Usage
```
verus getconnectioncount
```

## Arguments
This command does not take any arguments.

## Result
The command returns a numeric value representing the connection count.

## Examples
```
verus getconnectioncount
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getconnectioncount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- This command is useful for monitoring the node's connectivity status.

## Related Commands
- `getnetworkinfo`
- `getpeerinfo` 