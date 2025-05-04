# `move`

**Summary:**
Move a specified amount from one account in your wallet to another. This command is deprecated.

**Category:**
Wallet

---

## Description
The `move` command allows you to transfer a specified amount of VRSC from one account in your wallet to another. It is important to note that this command is deprecated. The command requires specifying the source and destination accounts, and the amount to move, with optional parameters for minimum confirmations and comments.

---

## Usage
```bash
move "fromaccount" "toaccount" amount ( minconf "comment" )
```

---

## Arguments
| Name         | Type    | Required | Description                                                                 |
|--------------|---------|----------|-----------------------------------------------------------------------------|
| fromaccount  | string  | Yes      | MUST be set to the empty string "" to represent the default account.        |
| toaccount    | string  | Yes      | MUST be set to the empty string "" to represent the default account.        |
| amount       | numeric | Yes      | Quantity of VRSC to move between accounts.                                  |
| minconf      | numeric | No       | Only use funds with at least this many confirmations. Default is 1.         |
| comment      | string  | No       | An optional comment, stored in the wallet only.                             |

---

## Result
Returns `true` if successful, `false` otherwise.

---

## Examples
```bash
# Move 0.01 VRSC from the default account to the account named tabby
verus move "" "tabby" 0.01

# Move 0.01 VRSC from timotei to akiko with a comment and funds have 6 confirmations
verus move "timotei" "akiko" 0.01 6 "happy birthday!"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "move", "params": ["timotei", "akiko", 0.01, 6, "happy birthday!"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is deprecated.

---

## Related Commands
- None. 