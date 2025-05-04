# clearbanned

## Summary
Clear all banned IPs.

## Category
Network

## Description
The `clearbanned` command removes all entries from the banned list. This is useful for resetting the banned list and allowing previously banned nodes to reconnect.

## Usage
```
verus clearbanned
```

## Arguments
This command does not take any arguments.

## Result
This command does not return a value but clears the banned list.

## Examples
```
verus clearbanned
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "clearbanned", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- Use this command to reset the banned list and allow all previously banned nodes to reconnect.

## Related Commands
- `setban`
- `listbanned` 