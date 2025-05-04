# `z_listoperationids`

**Summary:**
Returns the list of operation IDs currently known to the wallet, optionally filtered by status. Useful for tracking the progress of shielded and batch operations.

**Category:**
Wallet

---

## Description
`z_listoperationids` provides a list of operation IDs (opids) for all asynchronous operations (such as shielded sends, merges, and migrations) that are currently tracked by the wallet. This command is essential for monitoring, auditing, and troubleshooting privacy-preserving operations in the Verus wallet.

---

## Usage
```bash
verus z_listoperationids [status]
```
- `status`: Filter by operation status (string, optional, e.g., "success", "failed", "executing")

---

## Arguments
| Name    | Type    | Required | Description                                 |
|---------|---------|----------|---------------------------------------------|
| status  | string  | No       | Filter by operation status (optional)       |

---

## Result
Returns an array of operation IDs (strings):
```
[
  "operationid",
  ...
]
```

---

## Examples
```bash
verus z_listoperationids
verus z_listoperationids "success"
```

---

## Notes
- Operation IDs are used to track the status of asynchronous wallet operations.
- Use [`z_getoperationstatus`](./z_getoperationstatus.md) to get details for a specific opid.
- Useful for advanced wallet management and troubleshooting.

---

## Related Commands
- [`z_getoperationstatus`](./z_getoperationstatus.md): Get the status of an asynchronous operation.
- [`z_sendmany`](./z_sendmany.md): Initiate an asynchronous shielded send. 