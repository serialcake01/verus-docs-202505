# [\#](https://docs.verus.io/guides/refunds.html\#claim-refunds-on-the-verus-ethereum-bridge) Claim refunds on the Verus-Ethereum Bridge

Crossing the bridge costs Ethereum gas fees. Gas fees can swing in price quite dramatically in a short period of time. It can happen that when you pay for a bridge crossing the gas fees jumped up higher than what you paid for the crossing, resulting in a refund. Learn here how you can claim your refunds back.

## [\#](https://docs.verus.io/guides/refunds.html\#ethereum-to-ethereum) Ethereum to Ethereum

When using the Bridge website and making a conversion that goes from Ethereum to Verus and back to Ethereum, you have signed a message that created a refund address based on your Ethereum wallet's private key.

These are the steps to claim refunds when you did an Ethereum to Ethereum transaction:

### [\#](https://docs.verus.io/guides/refunds.html\#verus-mobile) Verus Mobile

1. Export your Ethereum private key from the wallet you did the conversion with (probably MetaMask)
2. Import that private key into a Verus wallet. The easiest way to do that is with Verus Mobile.

- Download Verus Mobile on the Play Store or App Store
- Add a new profile (choose username and password)
- Choose "import wallet"
- Choose "Enter key/seed"
- Enter the Ethereum private key here
- Add the currency you want to get back (click the plus-button corner-right, "Add PBaaS currency" and choose the one for you)

### [\#](https://docs.verus.io/guides/refunds.html\#verus-desktop) Verus Desktop

If you are running native mode (full node) Verus Desktop then you can import the Ethereum's private key in this way:

Go to `Settings (gear-icon top right)`, then `Coin Settings`, then select the Verus blockchain and type the following:

```
run importprivkey "ETH_PRIVATE_KEY" "" true

```

Important!

Verus Desktop will not show any progress on the import. It will take some time for the process to finish in the background.

## [\#](https://docs.verus.io/guides/refunds.html\#verus-to-ethereum) Verus to Ethereum

When bridging with Verus Desktop from the Verus blockchain to the Ethereum blockchain you had to fill in a refund address.

On the Bridge website you can use that refund address to claim the funds back.

←
[Divert staking rewards to different wallet](https://docs.verus.io/guides/divert-rewards.html)