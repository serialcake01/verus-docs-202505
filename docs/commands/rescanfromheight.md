# `rescanfromheight`

**Summary:**
Rescans the current wallet from a specified block height.

**Category:**
Wallet

---

## Description
The `rescanfromheight` command is used to rescan the current wallet starting from a specified block height. This can be useful for updating the wallet's transaction history and balances. Note that this operation can take a significant amount of time, especially for large wallets.

---

## Usage
```bash
rescanfromheight (height)
```

---

## Arguments
| Name   | Type | Required | Description                                      |
|--------|------|----------|--------------------------------------------------|
| height | int  | No       | The block height to start rescanning from. Defaults to 0. |

---

## Result
This command does not return a value.

---

## Examples
```bash
# Initiate rescan of entire chain
verus rescanfromheight

# Initiate rescan from block 1000000
verus rescanfromheight 1000000
```

---

## Notes
- This operation can take a long time to complete on large wallets.

---

## Related Commands
- None. 