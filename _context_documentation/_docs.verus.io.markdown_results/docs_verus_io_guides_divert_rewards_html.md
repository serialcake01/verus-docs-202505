# [\#](https://docs.verus.io/guides/divert-rewards.html\#divert-staking-rewards-to-different-wallet) Divert staking rewards to different wallet

![image-divert](https://docs.verus.io/images/divert-stakes.png)
If you are staking with funds on a VerusID, and that VerusID is locked with Vault, yet you want to spend your won stakes, this might be for you. Let's explain how you can divert your won stakes to a different wallet with Verus Desktop.

We have two devices with two different wallets:

- Your staking device
- Your hot wallet device

### [\#](https://docs.verus.io/guides/divert-rewards.html\#hot-wallet) Hot wallet

The hot wallet is the device you want your stakes to arrive on. On the hot wallet we need to lookup the `pubkey` for the address you want your won stakes to arrive.

Go to the `Wallet-tab`, click `receive` under Transparent Balance. Then click the three-dots next to the address you want to use. Click `Copy public key` as seen in the image below. Paste and save this somewhere, we will need it later.

![image-pubkey](https://docs.verus.io/images/copy-pubkey.png)

### [\#](https://docs.verus.io/guides/divert-rewards.html\#staking-device) Staking device

This device is staking happily, and your funds are secured with the Vault ( [read here how to set up](https://docs.verus.io/guides/setup-vault/)). Let's make sure your won stakes are sent to your hot wallet device.

Go to `settings` (the cogwheel top right corner), then select `Profile Settings` (default). Here you see the option `Custom native mode launch options`. Select `Verus`.

First copy and paste the code from below into the textfield and click `Add launch option`.

```
minetolocalwallet=0

```

Next, copy and paste the code below. Change `xxx` to the `public key` we have from the hot wallet. Click `Add launch option`.

```
pubkey=xxx

```

At last, click the `Save Changes` button. **Don't forget this step!** Now close the wallet and open it again. Congratulations, your stakes will now be diverted to your hot wallet.

←
[Set up Verus Vault in Verus Desktop (easy method)](https://docs.verus.io/guides/setup-vault-v2.html)[Claim refunds on the Verus-Ethereum Bridge](https://docs.verus.io/guides/refunds.html)
→