# `getwalletinfo`

**Summary:**
Returns an object containing various wallet state information.

**Category:**
Wallet

---

## Description
The `getwalletinfo` command returns an object containing various state information about the wallet. This includes details about balances, transaction count, keypool, and more. It is useful for obtaining a comprehensive overview of the wallet's current state.

---

## Usage
```bash
getwalletinfo
```

---

## Arguments
This command does not take any arguments.

---

## Result
Returns a JSON object containing:
- `walletversion`: (numeric) The wallet version.
- `balance`: (numeric) The total confirmed balance of the wallet in VRSC.
- `reserve_balance`: (numeric) The total confirmed reserve balance of the wallet in VRSC.
- `unconfirmed_balance`: (numeric) The total unconfirmed balance of the wallet in VRSC.
- `unconfirmed_reserve_balance`: (numeric) Total unconfirmed reserve balance of the wallet in VRSC.
- `immature_balance`: (numeric) The total immature balance of the wallet in VRSC.
- `immature_reserve_balance`: (numeric) Total immature reserve balance of the wallet in VRSC.
- `eligible_staking_balance`: (numeric) Eligible staking balance in VRSC.
- `txcount`: (numeric) The total number of transactions in the wallet.
- `keypoololdest`: (numeric) The timestamp of the oldest pre-generated key in the key pool.
- `keypoolsize`: (numeric) How many new keys are pre-generated.
- `unlocked_until`: (numeric) The timestamp that the wallet is unlocked for transfers, or 0 if locked.
- `paytxfee`: (numeric) The transaction fee configuration, set in VRSC/kB.
- `seedfp`: (string) The BLAKE2b-256 hash of the HD seed.

---

## Examples
```bash
# Get wallet information
verus getwalletinfo

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getwalletinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- None.

---

## Related Commands
- None. 