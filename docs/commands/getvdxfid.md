# `getvdxfid` Command Documentation

1. **Summary**: 
   - The `getvdxfid` command returns the VDXF key of a given URI string.

2. **Category**: 
   - VDXF

3. **Description**: 
   - This command processes a URI string to return its VDXF key. It can combine the URI with additional parameters like a VDXF key, a 256-bit hash, or an integer index number to produce a unique identifier.

4. **Usage**: 
   ```bash
   verus getvdxfid "vdxfuri" '{"vdxfkey":"i-address or vdxfkey", "uint256":"hexstr", "indexnum":0}'
   ```

5. **Arguments**: 
   | Name       | Type   | Required | Description                                                                 |
   |------------|--------|----------|-----------------------------------------------------------------------------|
   | vdxfuri    | string | Yes      | The URI string to be processed.                                             |
   | vdxfkey    | string | No       | An optional VDXF key or i-address to combine via hash.                      |
   | uint256    | hexstr | No       | An optional 256-bit hash to combine with the URI hash.                      |
   | indexnum   | int    | No       | An optional integer to combine with the URI hash.                           |

6. **Result**: 
   - Returns an object containing the base58check and hex VDXF ID values, along with any combined parameters.

7. **Examples**: 
   - Create the signature:
     ```bash
     verus getvdxfid "system.currency.export"
     ```
   - Verify the signature:
     ```bash
     verus getvdxfid "idname::userdefinedgroup.subgroup.publishedname"
     ```
   - As JSON-RPC:
     ```bash
     curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getvdxfid", "params": ["idname::userdefinedgroup.subgroup.publishedname"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
     ```

8. **Notes**: 
   - The command processes the URI by converting it from hex, hashing the data, and returning the result.
   - Additional parameters can be combined with the URI to create a unique identifier.

9. **Related Commands**: 
   - None specified. 