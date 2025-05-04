# `z_getoperationresult`

**Summary:**
Retrieves the result and status of one or more finished asynchronous operations, and removes them from memory. Useful for finalizing shielded sends, merges, and other privacy-preserving operations.

**Category:**
Wallet

---

## Description
`z_getoperationresult` provides the result and status of one or more finished asynchronous operations (such as shielded sends, merges, or migrations) tracked by the wallet, and removes them from memory. This command is essential for finalizing, auditing, and troubleshooting privacy-preserving operations in the Verus wallet.

---

## Usage
```bash
verus z_getoperationresult ["operationid", ...]
```
- `operationid`: Array of operation IDs to check (optional; if omitted, checks all finished operations)

---

## Arguments
| Name         | Type   | Required | Description                                         |
|--------------|--------|----------|-----------------------------------------------------|
| operationid  | array  | No       | Array of operation IDs to check (optional)          |

---

## Result
Returns an array of JSON objects, each representing the result and status of a finished operation.

---

## Examples
```bash
verus z_getoperationresult '["operationid1", "operationid2"]'
```

---

## Notes
- The operation is removed from memory after this call.
- Use [`z_getoperationstatus`](./z_getoperationstatus.md) to check the status of ongoing operations.
- Useful for advanced wallet management and troubleshooting.

---

## Related Commands
- [`z_getoperationstatus`](./z_getoperationstatus.md): Check the status of ongoing operations.
- [`z_listoperationids`](./z_listoperationids.md): List all operation IDs. 