# listbanned

## Summary
List all banned IPs/Subnets.

## Category
Network

## Description
The `listbanned` command provides a list of all IPs and subnets that are currently banned. This is useful for monitoring and managing the banned list to ensure that only the intended nodes are restricted from connecting to your network.

## Usage
```
verus listbanned
```

## Arguments
This command does not take any arguments.

## Result
The command returns a list of all banned IPs and subnets.

## Examples
```
verus listbanned
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listbanned", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- Use this command to review the current banned list and verify that it contains the correct entries.

## Related Commands
- `setban`
- `clearbanned` 