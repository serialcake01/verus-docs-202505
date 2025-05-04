# Core Concept: VerusID

VerusID is a foundational technology within the Verus ecosystem, representing a powerful, decentralized, self-sovereign identity system. Unlike traditional online accounts or simple blockchain addresses, a VerusID is a fully-realized digital asset that you own and control, serving multiple purposes:

*   **Self-Sovereign Identity:** You control your data and how it's shared, without relying on central authorities.
*   **Namespace:** Provides a human-readable name (`YourName@`) for interacting with the Verus network and its features.
*   **Digital Asset Container:** Can hold funds (VRSC and other Verus-based currencies/tokens), data, and even serve as the basis for launching new blockchains or currencies.
*   **Secure Login:** Enables passwordless login to compatible services.
*   **Signing Authority:** Can be used to create verifiable digital signatures for messages, files, or data.

## VerusID Structure

A VerusID is more than just a name; it's a rich data object stored on the blockchain. Understanding its structure helps in utilizing its full potential. You can view the details of any VerusID using the [`getidentity`](../commands/getidentity.md) command.

Key components include:

1.  **Name (`name@`):**
    *   The human-readable identifier, chosen during registration (e.g., `MyName@`, `ExampleCorp@`).
    *   Must be unique within its parent namespace (e.g., unique on the main VRSC chain, or unique under a specific parent ID like `SubID.ParentID@`).
    *   Used for sending/receiving funds and interacting with services.

2.  **Identity Address (i-address):**
    *   The unique, permanent blockchain identifier for the VerusID (e.g., `i5v3h9FWVdRFbNHU7DfcpGykQjRaHtMqu7`).
    *   Derived cryptographically during registration.
    *   Can be used interchangeably with the `name@` format in most CLI commands.

3.  **Primary Addresses:**
    *   One or more standard transparent addresses (`R-address`) that control the VerusID.
    *   The private keys corresponding to these addresses are required to perform actions like updating the ID, spending its funds, or signing data.
    *   Supports multi-signature configurations (`minimumsignatures` field defines how many signatures are needed).

4.  **Revocation Authority:**
    *   A VerusID (specified by its `name@` or i-address) that has the power to **revoke** the current VerusID.
    *   Revoking disables the ID's ability to spend funds or perform updates, effectively freezing it.
    *   This is a crucial security feature in case the primary keys are compromised.

5.  **Recovery Authority:**
    *   A VerusID (specified by its `name@` or i-address) that has the power to **recover** a revoked VerusID.
    *   Recovery allows assigning new primary addresses to regain control of the ID and its assets.
    *   This authority works in conjunction with the Revocation Authority.

6.  **Private Address (Optional):**
    *   A VerusID can optionally have a private Sapling address (`zs-address`) associated with it for shielded transactions.

7.  **Content Map (`contentmap` / `contentmultimap`):**
    *   Stores structured data linked to the VerusID using VDXF keys. This can include public profile information, attestations, service endpoints, or private encrypted data.

8.  **Parent (`parent`):**
    *   The VerusID or Currency ID under which this ID was created. For top-level IDs on the Verus mainnet, the parent is the Verus blockchain itself (`VRSC`). SubIDs have their parent VerusID as the parent.

9.  **System (`systemid`):**
    *   The blockchain system (identified by its Currency ID) on which this VerusID resides.

Example output snippet from `getidentity "Verus Coin Foundation@"`:

```json
{
  "fullyqualifiedname": "Verus Coin Foundation.VRSC@",
  "identity": {
    "version": 3,
    "flags": 0,
    "primaryaddresses": ["REpxm9bCLMiHRNVPA9unPBWixie7uHFA5C"], // Control Address
    "minimumsignatures": 1,
    "name": "Verus Coin Foundation",                    // Name
    "identityaddress": "i5v3h9FWVdRFbNHU7DfcpGykQjRaHtMqu7", // i-address
    "parent": "i5w5MuNik5NtLcYmNzcvaoixooEebB6MGV",        // Parent (VRSC i-address)
    "systemid": "i5w5MuNik5NtLcYmNzcvaoixooEebB6MGV",       // System (VRSC i-address)
    "contentmap": { ... },
    "revocationauthority": "i5v3h9FWVdRFbNHU7DfcpGykQjRaHtMqu7", // Revocation ID
    "recoveryauthority": "i5v3h9FWVdRFbNHU7DfcpGykQjRaHtMqu7", // Recovery ID
    "privateaddress": "zs1..."                             // Optional Private Address
    "timelock": 0                                          // Vault Status
  },
  "status": "active", // "active" or "revoked"
  ...
}
```

## Key Concepts

### Self-Sovereignty & Control

The core principle of VerusID is that you, the user, have ultimate control. The primary address(es) hold the cryptographic keys necessary to manage the ID. You decide what information (if any) is linked via the content map and who can revoke or recover your ID.

### Revocation & Recovery Authorities

These are essential security mechanisms:

*   **Purpose:** To protect your VerusID and its assets if your primary private keys are lost or stolen.
*   **Setup:** When registering an identity, you designate other existing VerusIDs as the Revocation and Recovery authorities. You can choose:
    *   **Your own other VerusIDs:** Provides self-recovery capabilities.
    *   **Trusted VerusIDs:** Belongs to friends, family, or trusted third parties.
    *   **`self`:** You can set the ID itself as an authority, but be extremely cautious. If you set `self` as the Recovery authority and another ID as the Revocation authority, you could permanently lose access if the ID is revoked.
*   **Process:**
    1.  If compromised, the designated **Revocation Authority** uses the [`revokeidentity`](../commands/revokeidentity.md) command to freeze the ID.
    2.  The designated **Recovery Authority** uses the [`recoveridentity`](../commands/recoveridentity.md) command to assign new primary addresses, regaining control.

### Verus Vault (Timelocking)

Verus Vault adds another layer of security by allowing you to lock your VerusID, preventing funds from being spent even if the primary keys are compromised.

*   **Locking:** Use [`setidentitytimelock`](../commands/setidentitytimelock.md) to set either:
    *   **Unlock Delay:** A period (in blocks) that must pass *after* an unlock request before funds can be spent.
    *   **Absolute Block Height:** A specific future block height at which the ID automatically unlocks.
*   **Unlocking:** Requires a transaction signed by the primary address(es). If a delay is set, the waiting period starts *after* the unlock transaction is confirmed.
*   **Benefits:** Provides a window to revoke/recover a compromised ID before funds can be moved, especially useful for long-term holdings or staking.
*   **Note:** Locked IDs can still receive funds, stake (if applicable), and be used for signing data. The lock only restricts spending outputs.

### Namespace and Asset Control

VerusIDs are the gateway to creating other assets on Verus:

*   **PBaaS Chains/Currencies:** Launching a new blockchain or currency requires a VerusID; the chain/currency shares the name of the ID (`MyChain.MyID@`).
*   **Tokens:** Can be launched under a VerusID namespace.
*   **SubIDs:** Can be created under a primary VerusID (e.g., `User.MyCompany@`), inheriting some properties but managed within the parent's namespace.

## Relevant CLI Commands

Interacting with VerusIDs primarily involves these commands:

**Viewing & Querying:**

*   [`getidentity`](../commands/getidentity.md): Retrieve the full details and status of a VerusID.
*   [`listidentities`](../commands/listidentities.md): List all VerusIDs controlled or watched by your wallet.
*   [`getidentitieswithaddress`](../commands/getidentitieswithaddress.md): Find IDs associated with a specific primary address.
*   [`getidentitieswithrevocation`](../commands/getidentitieswithrevocation.md): Find IDs for which a specific ID is the revocation authority.
*   [`getidentitieswithrecovery`](../commands/getidentitieswithrecovery.md): Find IDs for which a specific ID is the recovery authority.
*   [`getidentitycontent`](../commands/getidentitycontent.md): Query the content map data associated with an ID.
*   [`getidentityhistory`](../commands/getidentityhistory.md): View the historical changes to an ID's state.

**Creation & Management:**

*   [`registernamecommitment`](../commands/registernamecommitment.md): The first step to register a new VerusID name.
*   [`registeridentity`](../commands/registeridentity.md): The second step, using the commitment to finalize the ID registration.
*   [`updateidentity`](../commands/updateidentity.md): Modify properties of an existing VerusID (e.g., primary addresses, content map, authorities - requires appropriate permissions).
*   [`setidentitytimelock`](../commands/setidentitytimelock.md): Lock or unlock a VerusID using the Verus Vault feature.
*   [`revokeidentity`](../commands/revokeidentity.md): Revoke an ID (requires Revocation Authority).
*   [`recoveridentity`](../commands/recoveridentity.md): Recover a revoked ID (requires Recovery Authority).

**Signing & Verification:**

*   [`signmessage`](../commands/signmessage.md): Sign a message using a VerusID's authority.
*   [`signfile`](../commands/signfile.md): Sign a file using a VerusID's authority.
*   [`signdata`](../commands/signdata.md): A more advanced command for signing various data structures.
*   [`verifymessage`](../commands/verifymessage.md): Verify a message signature against a VerusID.
*   [`verifyfile`](../commands/verifyfile.md): Verify a file signature against a VerusID.
*   [`verifyhash`](../commands/verifyhash.md): Verify a signature against a hash and VerusID.
*   [`verifysignature`](../commands/verifysignature.md): Verify complex signatures created with `signdata`.

## Next Steps

Understanding VerusID is key to leveraging many of the advanced features of the Verus network.

*   Learn how to **create your first VerusID** by following the [Create VerusID Tutorial](TODO: Link to tutorial when available).
*   Explore the **[Currencies & DeFi Concepts Guide](./currencies-defi.md)** to see how VerusIDs enable the creation of new financial instruments.
*   Refer to the individual command pages linked above for detailed syntax and examples. 