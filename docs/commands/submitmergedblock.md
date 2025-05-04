# `submitmergedblock` Command Documentation

1. **Summary**: 
   - The `submitmergedblock` command attempts to submit one or more new blocks to one or more networks, including Verus and PBaaS merge mined chains.

2. **Category**: 
   - Mining & Staking

3. **Description**: 
   - This command submits a valid block for the current chain, along with embedded headers of other PBaaS merge mined chains. If the hash for this header meets the targets of other chains added with `addmergedblock`, the API submits those blocks to specified URL endpoints using an RPC `submitmergedblock` request.

4. **Usage**: 
   ```bash
   verus submitmergedblock "hexdata"
   ```

5. **Arguments**: 
   | Name     | Type   | Required | Description                                      |
   |----------|--------|----------|--------------------------------------------------|
   | hexdata  | string | Yes      | The hex-encoded block data to submit.            |

6. **Result**: 
   - Returns an object indicating whether the block was accepted or rejected, and details of PBaaS submissions.

7. **Examples**: 
   - Submit a block:
     ```bash
     verus submitmergedblock "mydata"
     ```
   - As JSON-RPC:
     ```bash
     curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitmergedblock", "params": ["mydata"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
     ```

8. **Notes**: 
   - The command is used for submitting blocks to both the Verus chain and PBaaS chains.
   - It requires valid block data encoded in hex format.

9. **Related Commands**: 
   - `addmergedblock` 