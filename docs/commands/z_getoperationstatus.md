# `z_getoperationstatus`

**Summary:**
Gets the status and any associated result or error data for one or more asynchronous operations. Useful for tracking shielded sends, merges, and other privacy-preserving operations.

**Category:**
Wallet

---

## Description
`z_getoperationstatus` provides the current status and any result or error data for one or more asynchronous operations (such as shielded sends, merges, or migrations) tracked by the wallet. The operation remains in memory after this call. This command is essential for monitoring, auditing, and troubleshooting privacy-preserving operations in the Verus wallet.

---

## Usage
```bash
verus z_getoperationstatus ["operationid", ...]
```
- `operationid`: Array of operation IDs to check (optional; if omitted, checks all operations)

---

## Arguments
| Name         | Type   | Required | Description                                         |
|--------------|--------|----------|-----------------------------------------------------|
| operationid  | array  | No       | Array of operation IDs to check (optional)          |

---

## Result
Returns an array of JSON objects, each representing the status of an operation.

---

## Examples
```bash
verus z_getoperationstatus '["operationid1", "operationid2"]'
```

---

## Notes
- The operation remains in memory after this call.
- Use [`z_getoperationresult`](./z_getoperationresult.md) to retrieve and remove finished operations.
- Useful for advanced wallet management and troubleshooting.

---

## Related Commands
- [`z_getoperationresult`](./z_getoperationresult.md): Retrieve and remove finished operations.
- [`z_listoperationids`](./z_listoperationids.md): List all operation IDs. 