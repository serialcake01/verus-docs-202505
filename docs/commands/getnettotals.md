# getnettotals

## Summary
Returns information about network traffic, including bytes in, bytes out, and current time.

## Category
Network

## Description
The `getnettotals` command provides statistics about the network traffic. It includes the total bytes received, total bytes sent, and the current CPU time. This information is useful for monitoring network usage and performance.

## Usage
```
verus getnettotals
```

## Arguments
This command does not take any arguments.

## Result
The command returns an object with fields such as:
- `totalbytesrecv`: Total bytes received (numeric)
- `totalbytessent`: Total bytes sent (numeric)
- `timemillis`: Total CPU time (numeric)

## Examples
```
verus getnettotals
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnettotals", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- This command is useful for tracking network traffic and diagnosing network performance issues.

## Related Commands
- `getnetworkinfo`
- `getpeerinfo` 