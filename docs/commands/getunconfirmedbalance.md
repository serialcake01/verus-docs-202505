# `getunconfirmedbalance`

**Summary:**
Returns the server's total unconfirmed balance.

**Category:**
Wallet

---

## Description
The `getunconfirmedbalance` command returns the server's total unconfirmed balance. This is useful for understanding the amount of funds that are pending confirmation in the wallet.

---

## Usage
```bash
getunconfirmedbalance
```

---

## Arguments
This command does not take any arguments.

---

## Result
Returns a numeric value representing the total unconfirmed balance in the wallet.

---

## Examples
```bash
# Get the total unconfirmed balance
verus getunconfirmedbalance
```

---

## Notes
- None.

---

## Related Commands
- [`getwalletinfo`](./getwalletinfo.md): Returns an object containing various wallet state information. 