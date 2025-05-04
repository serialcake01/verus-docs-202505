# `sendfrom`

**Summary:**
The `sendfrom` command is deprecated in favor of `sendtoaddress`. It sends an amount from an account to a VRSC address.

**Category:**
Wallet

---

## Description
The `sendfrom` command allows you to send a specified amount of VRSC from an account to a VRSC address. It is important to note that this command is deprecated and users are encouraged to use `sendtoaddress` instead. The command requires specifying the account, destination address, and amount, with optional parameters for minimum confirmations and comments.

---

## Usage
```bash
sendfrom "fromaccount" "toVRSCaddress" amount ( minconf "comment" "comment-to" )
```

---

## Arguments
| Name         | Type    | Required | Description                                                                 |
|--------------|---------|----------|-----------------------------------------------------------------------------|
| fromaccount  | string  | Yes      | MUST be set to the empty string "" to represent the default account.        |
| toVRSCaddress| string  | Yes      | The VRSC address to send funds to.                                          |
| amount       | numeric | Yes      | The amount in VRSC (transaction fee is added on top).                       |
| minconf      | numeric | No       | Only use funds with at least this many confirmations. Default is 1.         |
| comment      | string  | No       | A comment for the transaction, stored in your wallet.                       |
| comment-to   | string  | No       | A comment to store the name of the recipient, stored in your wallet.        |

---

## Result
`transactionid` (string): The transaction id.

---

## Examples
```bash
# Send 0.01 VRSC from the default account to the address, must have at least 1 confirmation
verus sendfrom "" "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" 0.01

# Send 0.01 from the tabby account to the given address, funds must have at least 6 confirmations
verus sendfrom "tabby" "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV" 0.01 6 "donation" "seans outpost"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendfrom", "params": ["tabby", "RD6GgnrMpPaTSMn8vai6yiGA7mN4QGPV", 0.01, 6, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- This command is deprecated; use `sendtoaddress` instead.
- Requires wallet to be unlocked.

---

## Related Commands
- [`sendtoaddress`](./sendtoaddress.md): Preferred command for sending funds to a VRSC address. 