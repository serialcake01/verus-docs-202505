# getpeerinfo

## Summary
Returns data about each connected network node as a JSON array of objects.

## Category
Network

## Description
The `getpeerinfo` command provides detailed information about each peer connected to the network. It includes data such as the peer's IP address, services offered, connection status, and various metrics related to data transmission and synchronization.

## Usage
```
verus getpeerinfo
```

## Arguments
This command does not take any arguments.

## Result
The command returns a JSON array of objects, each representing a connected peer with fields such as:
- `id`: Peer index (numeric)
- `addr`: The IP address and port of the peer (string)
- `services`: The services offered (string)
- `tls_established`: Status of TLS connection (boolean)
- `lastsend`: The time in seconds since epoch of the last send (numeric)
- `lastrecv`: The time in seconds since epoch of the last receive (numeric)
- `bytessent`: The total bytes sent (numeric)
- `bytesrecv`: The total bytes received (numeric)
- `conntime`: The connection time in seconds since epoch (numeric)
- `pingtime`: Ping time (numeric)
- `version`: The peer version (numeric)
- `subver`: The string version (string)
- `inbound`: Inbound (true) or Outbound (false) (boolean)
- `startingheight`: The starting height (block) of the peer (numeric)
- `banscore`: The ban score (numeric)
- `synced_headers`: The last header we have in common with this peer (numeric)
- `synced_blocks`: The last block we have in common with this peer (numeric)
- `inflight`: The heights of blocks we're currently asking from this peer (array of numeric)

## Examples
```
verus getpeerinfo
```
```
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getpeerinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

## Notes
- This command is useful for monitoring the status and performance of network connections.
- It can help identify issues with specific peers or network configurations.

## Related Commands
- `getnetworkinfo`
- `getconnectioncount`
- `addnode`
- `disconnectnode` 