# setban

## Summary
Attempts to add or remove an IP/Subnet from the banned list.

## Category
Network

## Description
The `setban` command is used to manage the banned list of IPs or subnets. It allows you to add or remove entries from this list, effectively controlling which nodes are allowed to connect to your network.

## Usage
```
verus setban "ip(/netmask)" "add|remove" (bantime) (absolute)
```

## Arguments
| Name       | Type    | Required | Description |
|------------|---------|----------|-------------|
| `ip(/netmask)` | string | Yes      | The IP/Subnet with an optional netmask (default is /32 = single IP). |
| `command`  | string | Yes      | 'add' to add an IP/Subnet to the list, 'remove' to remove an IP/Subnet from the list. |
| `bantime`  | numeric | No       | Time in seconds for how long the IP is banned (0 or empty means using the default time of 24h). |
| `absolute` | boolean | No       | If set, the bantime must be an absolute timestamp in seconds since epoch. |

## Result
This command does not return a value but modifies the banned list.

## Examples
```
verus setban "192.168.0.6" "add" 86400
```
```
verus setban "192.168.0.0/24" "add"
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setban", "params": ["192.168.0.6", "add", 86400] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- The default ban time is 24 hours, which can be overridden by the `-bantime` startup argument.
- Use this command to prevent unwanted nodes from connecting to your network.

## Related Commands
- `listbanned`
- `clearbanned`
- `getpeerinfo` 