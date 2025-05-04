# `z_validateaddress`

**Summary:**
Return information about the given z address.

**Category:**
Wallet

---

## Description
The `z_validateaddress` command returns information about a specified z address. This command is useful for validating z addresses and checking their properties, such as whether they belong to the wallet and their type (sprout or sapling).

---

## Usage
```bash
z_validateaddress "zaddr"
```

---

## Arguments
| Name  | Type   | Required | Description                                                                 |
|-------|--------|----------|-----------------------------------------------------------------------------|
| zaddr | string | Yes      | The z address to validate.                                                   |

---

## Result
Returns a JSON object containing:
- `isvalid`: (boolean) If the address is valid or not. If not, this is the only property returned.
- `address`: (string) The z address validated.
- `type`: (string) "sprout" or "sapling".
- `ismine`: (boolean) If the address is yours or not.
- `payingkey`: (string) [sprout] The hex value of the paying key, a_pk.
- `transmissionkey`: (string) [sprout] The hex value of the transmission key, pk_enc.
- `diversifier`: (string) [sapling] The hex value of the diversifier, d.
- `diversifiedtransmissionkey`: (string) [sapling] The hex value of pk_d.

---

## Examples
```bash
# Validate a z address
verus z_validateaddress "zcWsmqT4X2V4jgxbgiCzyrAfRT1vi1F4sn7M5Pkh66izzw8Uk7LBGAH3DtcSMJeUb2pi3W4SQF8LMKkU2cUuVP68yAGcomL"

# As a JSON-RPC call
curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_validateaddress", "params": ["zcWsmqT4X2V4jgxbgiCzyrAfRT1vi1F4sn7M5Pkh66izzw8Uk7LBGAH3DtcSMJeUb2pi3W4SQF8LMKkU2cUuVP68yAGcomL"] }' -H 'content-type: text/plain;' http://127.0.0.1:27486/
```

---

## Notes
- None.

---

## Related Commands
- None. 