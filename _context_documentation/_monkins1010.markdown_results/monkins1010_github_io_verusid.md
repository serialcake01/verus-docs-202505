# [\#](https://monkins1010.github.io/verusid/\#creating-an-identity-on-veruscoin) Creating an Identity on VerusCoin

## [\#](https://monkins1010.github.io/verusid/\#introduction) Introduction

This guide aims to walk you through the process of creating an identity on the VerusCoin blockchain by registering a name commitment and then registering an ID with that commitment. By following these steps, you'll secure a unique rent-free identity that can be used within the Verus ecosystem for transactions, authentication, and more.

**Prerequisites:**

- Verus CLI is installed on your system.
- The VerusCoin testnet is running and fully synchronized.
- You have sufficient funds in your wallet to cover transaction fees and any associated costs (more than 100 VRSCTEST coins).

## [\#](https://monkins1010.github.io/verusid/\#overview) Overview

Creating an identity on VerusCoin involves two main steps:

1. **Registering a Name Commitment:** This step commits your desired identity name to the blockchain in a way that conceals it until you're ready to register, preventing others from front-running or claiming your name.
2. **Registering an Identity:** Using the name commitment, you register the actual identity, making it publicly available and usable within the Verus ecosystem.

## [\#](https://monkins1010.github.io/verusid/\#step-1-register-a-name-commitment) Step 1: Register a Name Commitment

### [\#](https://monkins1010.github.io/verusid/\#what-is-a-name-commitment) What is a Name Commitment?

A name commitment is a cryptographic commitment to the identity name you intend to register. It ensures privacy and security by hiding the actual name during the commitment phase, protecting it from being claimed by others before you complete the registration.

### [\#](https://monkins1010.github.io/verusid/\#command-registernamecommitment) Command: `registernamecommitment`

The `registernamecommitment` command creates a namecommitment transaction for your desired identity name.

#### [\#](https://monkins1010.github.io/verusid/\#syntax) Syntax

```bash

verus -chain=vrsctest registernamecommitment "name" "controladdress" ("referralidentity") ("parentnameorid") ("sourceoffunds")

```

- `<name>`: The unique name to commit to. creating a name commitment is not a registration, and if one is created for a name that exists, it may succeed, but will never be able to be used
- `<controladdress`: address that will control this commitment. IMPORTANT: this is not necessarily the address that should control the actual ID, and it should be present in the current wallet that is registering the ID. Change may go to this address.
- `<referralidentity>`: (optional) friendly name or identity address that is provided as a referral mechanism and to lower network cost of the ID.
- `<parentnameorid>`: (optional) friendly name or currency i-address, which will be the parent of this ID and dictate issuance rules & pricing.
- `<sourceoffunds>`: (optional) optional address to use for source of funds. if not specified, transparent wildcard "\*" is used.

#### [\#](https://monkins1010.github.io/verusid/\#example) Example

Suppose you want to register the identity name `tutorial`. Execute the following command:

```bash

verus -chain=vrsctest registernamecommitment "tutorial" "RVdPfjLiWRbD7v63Ybhq2AL9FRSgyKsK9N" "" "vrsctest" "*"

```

- `"tutorial"`: The desired identity name.
- `"RVdPfjLiWRbD7v63Ybhq2AL9FRSgyKsK9N"`: the controladdress of that namecommitment. You can create an address using the `getnewaddress` command.
- `""`: There is no referral used.
- `vrsctest`: We create an identity using the root currency of the testnet. The result will be the identity ' **tutorial.vrsctest@**' or ' **tutorial@**' since its a root id.

##### [\#](https://monkins1010.github.io/verusid/\#result) Result

Be sure to save the result, as it will be essential to do the next step when finally register the identity. When you for some reason lose that information and the name is still available you have to register another name commitment.

```none

{
  "txid": "38c46f83021ccf3155029a94d97d692619186a34cc111f832caf542c469fe3b2",
  "namereservation": {
    "version": 1,
    "name": "tutorial",
    "parent": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
    "salt": "bf6a7b01e9329c86d6058fde9bf1788febfa31125dfd94ef294017eedfee4f19",
    "referral": "",
    "nameid": "i9VVAnGieMr7uK1AgkJfiZEXLskbkRRmeZ"
  }
}

```

#### [\#](https://monkins1010.github.io/verusid/\#notes) Notes

- **Transaction Submission:** The command will create a transaction with a namecommitment and sends it to the network.
- **Confirmation:** Wait for the transaction to be included in a block (usually after one confirmation) before proceeding to the next step.
- **Fees:** The fees for that transaction will be 0.0001 VRSCTEST Coins.

You can check the confirmations via the command:

```none

verus -chain=vrsctest getrawtransaction "38c46f83021ccf3155029a94d97d692619186a34cc111f832caf542c469fe3b2" 1 | jq '.confirmations'

```

When the number of confirmations is `1 or higher` you can proceed. When the command returns `null`. The transaction is not confirmed yet and you have to wait a bit more. The Blocktime on the testnet is supposed to be one minute. Be aware that it sometimes can take a bit longer in the testnet.

## [\#](https://monkins1010.github.io/verusid/\#step-2-register-the-identity) Step 2: Register the Identity

### [\#](https://monkins1010.github.io/verusid/\#command-registeridentity) Command: `registeridentity`

After your name commitment is confirmed on the blockchain, you can register the identity using the `registeridentity` command.

#### [\#](https://monkins1010.github.io/verusid/\#syntax-1) Syntax

```bash

verus -chain=vrsctest registeridentity "jsonidregistration" (returntx) feeoffer sourceoffunds

```

- `<jsonidregistration>`: An json object that defines the identity registration.
- `<primaryaddresses>`: An array of addresses associated with the identity.
- `<minimumsignatures>`: The minimum number of signatures required for identity actions (useful for multi-signature setups).
- `<funding_source>`: (Optional) The address or alias to fund the transaction.

#### [\#](https://monkins1010.github.io/verusid/\#example-1) Example

For our example with the previous registered namecommitment the object can look like the following.

```bash

verus -chain=vrsctest registeridentity '{"txid":"38c46f83021ccf3155029a94d97d692619186a34cc111f832caf542c469fe3b2","namereservation":{"version":1,"name":"tutorial","parent":"iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq","salt":"bf6a7b01e9329c86d6058fde9bf1788febfa31125dfd94ef294017eedfee4f19","referral":"","nameid":"i9VVAnGieMr7uK1AgkJfiZEXLskbkRRmeZ"},"identity":{"name":"tutorial.vrsctest","primaryaddresses":["RVdPfjLiWRbD7v63Ybhq2AL9FRSgyKsK9N"],"minimumsignatures":1,"revocationauthority":[""],"recoveryauthority":[""]}}'

```

- `<jsonidregistration>`:

this is the json object which was minified as string. Take a closer look here. Some values should be already familiar for you. `txid` and the `namereservation` object contains values from the response of the registernamecommitment command. The `identity` object contains information like the primaryaddresses, revocation and recoveryauthority which you can adjust to your needs. When you dont put a recovation and recovery authority your primaryaddress `RVdPfjLiWRbD7v63Ybhq2AL9FRSgyKsK9N` will be used by default both authorities.

```none

{
  "txid": "38c46f83021ccf3155029a94d97d692619186a34cc111f832caf542c469fe3b2",
  "namereservation": {
    "version": 1,
    "name": "tutorial",
    "parent": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
    "salt": "bf6a7b01e9329c86d6058fde9bf1788febfa31125dfd94ef294017eedfee4f19",
    "referral": "",
    "nameid": "i9VVAnGieMr7uK1AgkJfiZEXLskbkRRmeZ"
  },
    "identity":{
        "name":"tutorial.vrsctest",
        "primaryaddresses":["RVdPfjLiWRbD7v63Ybhq2AL9FRSgyKsK9N"],
        "minimumsignatures":1,
        "revocationauthority":[""],
        "recoveryauthority":[""]}
}

```

##### [\#](https://monkins1010.github.io/verusid/\#result-1) Result

The result of this command will generate a transaction ID.

```none

54b091317a0ab4c50731f3762ff73af1c3dca11ede2d0ae9527cc6f84f4d0f1a

```

#### [\#](https://monkins1010.github.io/verusid/\#notes-1) Notes

- **Skipped Arguments:** for simplicity reasons we skipped `returntx`, `feeoffer` and `sourceoffunds`
- **Matching Values:** Ensure the name and other values matches the values used in the name commitment.
- **Transaction Fees:** The registration will require a fee, deducted from your wallet. On the VRSCTEST a root identity cost 100 VRSCTEST. You can reduce the price to 80 VRSCTEST by using a referral identity. On top of that comes a transactionfee of 0.0001 VRSCTEST
- **Confirmation:** Wait for the identity registration transaction to be confirmed on the blockchain.

As in the previous step you can also check the confirmations via the command:

```none

verus -chain=vrsctest getrawtransaction "54b091317a0ab4c50731f3762ff73af1c3dca11ede2d0ae9527cc6f84f4d0f1a
" 1 | jq '.confirmations'

```

When the number of confirmations is `1 or higher` your identity should be registered. And you can verify your registration.

## [\#](https://monkins1010.github.io/verusid/\#step-3-verify-your-identity-registration) Step 3: Verify Your Identity Registration

To confirm that your identity has been successfully registered, use the `getidentity` command.

### [\#](https://monkins1010.github.io/verusid/\#command-getidentity) Command: `getidentity`

#### [\#](https://monkins1010.github.io/verusid/\#syntax-2) Syntax

```bash

verus -chain=vrsctest getidentity "<name>"

```

- `<name>`: name followed by "@" or i-address of an identity

#### [\#](https://monkins1010.github.io/verusid/\#example-2) Example

```bash

verus -chain=vrsctest getidentity "tutorial@"

```

#### [\#](https://monkins1010.github.io/verusid/\#expected-output) Expected Output

You should receive detailed information about your identity, such as:

- Identity name
- Primary addresses
- Identity ID
- Registration block height
- Other associated data

eg.

```none

{
  "friendlyname": "tutorial.VRSCTEST@",
  "fullyqualifiedname": "tutorial.VRSCTEST@",
  "identity": {
    "version": 3,
    "flags": 0,
    "primaryaddresses": [\
      "RVdPfjLiWRbD7v63Ybhq2AL9FRSgyKsK9N"\
    ],
    "minimumsignatures": 1,
    "name": "tutorial",
    "identityaddress": "i9VVAnGieMr7uK1AgkJfiZEXLskbkRRmeZ",
    "parent": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
    "systemid": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
    "contentmap": {
    },
    "contentmultimap": {
    },
    "revocationauthority": "i9VVAnGieMr7uK1AgkJfiZEXLskbkRRmeZ",
    "recoveryauthority": "i9VVAnGieMr7uK1AgkJfiZEXLskbkRRmeZ",
    "timelock": 0
  },
  "status": "active",
  "canspendfor": true,
  "cansignfor": true,
  "blockheight": 255187,
  "txid": "54b091317a0ab4c50731f3762ff73af1c3dca11ede2d0ae9527cc6f84f4d0f1a",
  "vout": 0
}

```

After registering the identity, some output should appear. To really make sure you own the identity you should take a closer look to the values `canspendfor` or `cansignfor`. Both values should be `true`.

## [\#](https://monkins1010.github.io/verusid/\#conclusion) Conclusion

Congratulations! You have successfully created an identity on the VerusCoin blockchain by registering a name commitment and then registering the identity. Your new identity is now part of the Verus ecosystem and can be used for various purposes, including secure transactions and decentralized applications.

## [\#](https://monkins1010.github.io/verusid/\#additional-tips) Additional Tips

- **Multi-Signature Identities:** If you require enhanced security, consider setting up a multi-signature identity by specifying multiple `primaryaddresses` and adjusting the `minimumsignatures` parameter accordingly.

- **Store Data:** You can store data in an identity by using the `contentmap` or `contentmultimap`

- **Updating Identities:** You can update your identity's information (e.g., primary addresses) using the `updateidentity` command.


## [\#](https://monkins1010.github.io/verusid/\#references) References

- **Official VerusCoin Documentation:** Visit the [VerusCoin GitHub](https://github.com/VerusCoin/VerusCoin) for the latest documentation and updates.
- **Community Support:** Join the VerusCoin community forums or Discord channels for assistance from other users and developers.

## [\#](https://monkins1010.github.io/verusid/\#disclaimer) Disclaimer

This guide is based on the VerusCoin protocol as of October 2024. Features and commands may change in future versions.

Contents

- [Introduction](https://monkins1010.github.io/verusid/#introduction)
- [Overview](https://monkins1010.github.io/verusid/#overview)
- [Step 1: Register a Name Commitment](https://monkins1010.github.io/verusid/#step-1-register-a-name-commitment)
- [What is a Name Commitment?](https://monkins1010.github.io/verusid/#what-is-a-name-commitment)
- [Command: registernamecommitment](https://monkins1010.github.io/verusid/#command-registernamecommitment)
- [Step 2: Register the Identity](https://monkins1010.github.io/verusid/#step-2-register-the-identity)
- [Command: registeridentity](https://monkins1010.github.io/verusid/#command-registeridentity)
- [Step 3: Verify Your Identity Registration](https://monkins1010.github.io/verusid/#step-3-verify-your-identity-registration)
- [Command: getidentity](https://monkins1010.github.io/verusid/#command-getidentity)
- [Conclusion](https://monkins1010.github.io/verusid/#conclusion)
- [Additional Tips](https://monkins1010.github.io/verusid/#additional-tips)
- [References](https://monkins1010.github.io/verusid/#references)
- [Disclaimer](https://monkins1010.github.io/verusid/#disclaimer)