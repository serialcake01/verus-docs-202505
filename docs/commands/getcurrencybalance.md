# `getcurrencybalance` Command Documentation

1. **Summary**: 
   - The `getcurrencybalance` command returns the balance in all currencies of a specified address belonging to the node's wallet.

2. **Category**: 
   - Currency

3. **Description**: 
   - This command retrieves the balance for a given address, which can be a transparent or private address. It supports wildcards and can limit the currencies shown. Note that if the wallet only has an incoming viewing key, the balance may be larger than the actual balance due to undetected spends.

4. **Usage**: 
   ```bash
   verus getcurrencybalance "address" ( minconf ) ( friendlynames ) ( includeshared )
   ```

5. **Arguments**: 
   | Name          | Type    | Required | Description                                                                 |
   |---------------|---------|----------|-----------------------------------------------------------------------------|
   | address       | string  | Yes      | The selected address, which can include wildcards.                          |
   | minconf       | numeric | No       | Only include transactions confirmed at least this many times (default=1).   |
   | friendlynames | boolean | No       | Use friendly names instead of i-addresses (default=true).                   |
   | includeshared | boolean | No       | Include outputs that can also be spent by others (default=false).           |

6. **Result**: 
   - Returns the total amount in VRSC received for the specified address.

7. **Examples**: 
   - Total amount received by an address:
     ```bash
     verus getcurrencybalance "myaddress"
     ```
   - Total amount received by an address with at least 5 confirmations:
     ```bash
     verus getcurrencybalance "myaddress" 5
     ```
   - As JSON-RPC:
     ```bash
     curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getcurrencybalance", "params": ["myaddress", 5] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
     ```

8. **Notes**: 
   - Caution is advised if the wallet has only an incoming viewing key, as the balance may be overstated.
   - The command supports both transparent and private addresses.

9. **Related Commands**: 
   - None specified. 