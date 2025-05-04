# `encryptwallet`

**Summary:**
Encrypts the wallet with a passphrase for the first time.

**Category:**
Wallet

---

## Description
The `encryptwallet` command encrypts the wallet with a specified passphrase. This is intended for first-time encryption. After encryption, any calls that interact with private keys, such as sending or signing, will require the passphrase to be set. Note that this command will shut down the server after execution.

---

## Usage
```bash
encryptwallet "passphrase"
```

---

## Arguments
| Name       | Type   | Required | Description                                                                 |
|------------|--------|----------|-----------------------------------------------------------------------------|
| passphrase | string | Yes      | The passphrase to encrypt the wallet with. It must be at least 1 character long. |

---

## Result
This command does not return a value.

---

## Examples
```bash
# Encrypt your wallet
verus encryptwallet "my pass phrase"

# Now set the passphrase to use the wallet, such as for signing or sending VRSC
verus walletpassphrase "my pass phrase"

# Now we can do something like sign
verus signmessage "VRSC_address" "test message"

# Now lock the wallet again by removing the passphrase
verus walletlock

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "encryptwallet", "params": ["my pass phrase"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- WARNING: `encryptwallet` is disabled by default. To enable it, restart `zcashd` with the `-experimentalfeatures` and `-developerencryptwallet` command-line options, or add these lines to the `zcash.conf` file:
  ```
  experimentalfeatures=1
  developerencryptwallet=1
  ```
- This command will shut down the server after execution.

---

## Related Commands
- [`walletpassphrase`](./walletpassphrase.md): Sets the wallet passphrase for signing or sending.
- [`walletlock`](./walletlock.md): Locks the wallet by removing the passphrase.
- [`walletpassphrasechange`](./walletpassphrasechange.md): Changes the wallet passphrase. 