# getnetworkinfo

## Summary
Returns an object containing various state info regarding P2P networking.

## Category
Network

## Description
The `getnetworkinfo` command provides detailed information about the current state of P2P networking. It includes data such as the server version, protocol version, services offered, number of connections, and network-specific details like reachability and proxy settings.

## Usage
```
verus getnetworkinfo
```

## Arguments
This command does not take any arguments.

## Result
The command returns an object with fields such as:
- `version`: The server version (numeric)
- `subversion`: The server subversion string (string)
- `protocolversion`: The protocol version (numeric)
- `localservices`: The services offered to the network (string)
- `timeoffset`: The time offset (numeric)
- `connections`: The number of connections (numeric)
- `networks`: Information per network (array)
- `relayfee`: Minimum relay fee for non-free transactions in VRSC/kB (numeric)
- `localaddresses`: List of local addresses (array)
- `warnings`: Any network warnings (string)

## Examples
```
verus getnetworkinfo
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnetworkinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- This command is useful for obtaining a comprehensive overview of the network state and configuration.
- It can help diagnose network issues and verify network settings.

## Related Commands
- `getpeerinfo`
- `getconnectioncount`
- `addnode` 