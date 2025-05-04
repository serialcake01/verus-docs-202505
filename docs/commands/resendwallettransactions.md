# `resendwallettransactions`

**Summary:**
Immediately re-broadcast unconfirmed wallet transactions to all peers. Intended for testing purposes.

**Category:**
Wallet

---

## Description
The `resendwallettransactions` command is used to immediately re-broadcast all unconfirmed wallet transactions to all peers. This command is primarily intended for testing purposes, as the wallet code automatically re-broadcasts transactions periodically.

---

## Usage
```bash
resendwallettransactions
```

---

## Arguments
This command does not take any arguments.

---

## Result
Returns an array of transaction IDs that were re-broadcast.

---

## Examples
```bash
# Re-broadcast all unconfirmed wallet transactions
verus resendwallettransactions
```

---

## Notes
- This command is intended for testing purposes only.

---

## Related Commands
- None. 