# ping

## Summary
Requests that a ping be sent to all other nodes to measure ping time.

## Category
Network

## Description
The `ping` command is used to send a ping request to all connected nodes. This helps measure the ping time, which is reported in the `pingtime` and `pingwait` fields of the `getpeerinfo` command. The ping command is processed in the queue with all other commands, so it measures the processing backlog as well as the network ping.

## Usage
```
verus ping
```

## Arguments
This command does not take any arguments.

## Result
The command does not return a direct result but updates the `pingtime` and `pingwait` fields in the `getpeerinfo` output.

## Examples
```
verus ping
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "ping", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- The ping command helps in assessing the network latency and processing backlog.
- It is useful for diagnosing network performance issues.

## Related Commands
- `getpeerinfo`
- `getnetworkinfo` 