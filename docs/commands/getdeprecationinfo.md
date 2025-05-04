# `getdeprecationinfo` Command Documentation

1. **Summary**: 
   - The `getdeprecationinfo` command returns an object containing the current version and deprecation block height, applicable only on the mainnet.

2. **Category**: 
   - Control

3. **Description**: 
   - This command provides information about the current server version and the block height at which this version will deprecate and shut down. It is useful for ensuring that the software is up-to-date and aware of upcoming deprecations.

4. **Usage**: 
   ```bash
   verus getdeprecationinfo
   ```

5. **Arguments**: 
   - None

6. **Result**: 
   - Returns an object with the server version, subversion string, and deprecation block height.

7. **Examples**: 
   - Retrieve deprecation info:
     ```bash
     verus getdeprecationinfo
     ```
   - As JSON-RPC:
     ```bash
     curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getdeprecationinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
     ```

8. **Notes**: 
   - This command is only applicable on the mainnet.
   - It helps in planning upgrades by providing the deprecation block height.

9. **Related Commands**: 
   - None specified. 