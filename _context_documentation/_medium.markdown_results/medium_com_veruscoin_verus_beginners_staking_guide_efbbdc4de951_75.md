[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2Fefbbdc4de951&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-beginners-staking-guide-efbbdc4de951&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-beginners-staking-guide-efbbdc4de951&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:64:64/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-efbbdc4de951---------------------------------------)

·

[![Verus Coin](https://miro.medium.com/v2/resize:fill:76:76/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-efbbdc4de951---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

# Verus Beginner’s Staking Guide

[![Lex English](https://miro.medium.com/v2/resize:fill:64:64/1*nvxFlKMtv849EXvrPIdwSw.jpeg)](https://medium.com/@solidfreez?source=post_page---byline--efbbdc4de951---------------------------------------)

[Lex English](https://medium.com/@solidfreez?source=post_page---byline--efbbdc4de951---------------------------------------)

Follow

9 min read

·

Mar 9, 2021

--

Listen

Share

# The Basics

Verus is among the easiest cryptocurrencies to stake and earn rewards. Unlike many staking systems your Verus is completely accessible while it’s staking, it isn’t locked up, inaccessible, or out of your control in any way. You just have to flip a switch in your wallet to turn it on, and your Verus remains in your wallet the whole time, and can be spent at any time.

Verus uses a novel consensus mechanism called [Proof-of-Power](https://verus.io/technology/verus_proof_of_power) (PoP) which is a hybrid half Proof-of-Work (PoW), half Proof-of-Stake (PoS) system. Half of the blocks are mined using VerusHash, and the other half are “minted” via staking. This means that both miners and stakers are doing the work to process transactions and secure the network, and that attackers would need BOTH a significant share of mining hash rate AND of the available supply of Verus (VRSC) to attack the network.

Every block has a chance of being won by staking, and over time it averages out that half of the blocks are solved by mining and half by staking. The average block time on Verus is 1 minute. If you stake a block you’ll get the block reward and any transaction fees paid by users to have their transactions processed. At the time of writing, the block reward is 12 VRSC, and there is a halving (the reward drops in half) approximately every two years, the last of which was in November 2020.

The chances of staking and receiving a block reward for any given block are proportional to the amount of Verus you’re staking. There is no minimum amount of Verus required to stake, and any funds kept in a transparent address or a VerusID that have been there for at least 150 blocks (about 150 minutes) may be used to stake.

Your wallet must be running, connected to the internet, and synced with the Verus blockchain with staking enabled in order to stake. Addresses/wallets should only be staked from a single computer. By default staking is disabled to prevent unintentionally staking from multiple computers or creating problems with accounting for staked funds when they’re not expected.

# Staking Requirements

To stake successfully your wallet must meet these requirements:

- Funds held in one or more transparent addresses or VerusIDs in the wallet
- Wallet is running, online, synced to the Verus blockchain on a system with an accurate system clock
- Staking is enabled in the wallet software

# Verus Desktop (GUI) Staking How-To

To enable staking in the Verus Desktop wallet you’ll open the wallet and go to the Mining tab. Here on the mining dashboard you can enable staking by clicking the icon of the dollar sign with the slash through it.

Or, from the mining dashboard you can click on Verus on the left side, then toggle staking on in the main interface.

That should get you staking. With staking enabled you’ll get a dashboard showing estimates for potential staking returns given the current network conditions that looks like this:

The calculator is always only an estimate, since the whole system is based on statistical averages over time, and dependent on changing network conditions. In particular, these estimates and your results will vary based on how much Verus is being staked on the rest of the network by all participants in any given moment.

Notice in that calculator that it shows only a portion staking — this is because a portion of the balance is unavailable for staking, having recently staked, and will be available again in 150 blocks. For more information on this aspect see the UTXO Details section below.

You’ll know you’ve successfully staked when you see staking transactions and rewards in your transaction list, and when your balance goes up accordingly.

# Verus Command Line (CLI) Staking How-To

You might prefer to use Verus on the command line, either to run on much lighter-weight hardware or headless systems, for the ability to script and integrate with Verus, or just for more granular control over your wallet.

This assumes you are already familiar with the command line and have verusd running and have met the other prerequisites for being eligible to stake.

You can enable staking in a running wallet using this command:

```
verus setgenerate true 0
```

This will turn your mining threads down to zero if you were mining. If you want to also re-enable solo mining you can follow this with:

```
verus setgenerate true X
```

where X is the number of threads you want to mine with.

You can disable staking AND mining using:

```
verus setgenerate false
```

You can get your current staking/mining status using:

```
verus getmininginfo
```

which will return something like this:

```
{
 “blocks”: 1424603,
 “currentblocksize”: 0,
 “currentblocktx”: 0,
 “averageblockfees”: 1.20011909,
 “difficulty”: 1004965568496.515,
 “stakingsupply”: 41243165.47632869,
 “errors”: “”,
 “genproclimit”: 0,
 “localhashps”: 0,
 “networkhashps”: 351834027116,
 “pooledtx”: 1,
 “testnet”: false,
 “chain”: “main”,
 “generate”: true,
 “staking”: true,
 “numthreads”: 0,
 “mergemining”: 0
}
```

The “stakingsupply” figure is an estimate of how much Verus has been staking on the whole network recently. Your approximate chances of staking any given block can be calculated by dividing your eligible staking balance (funds at least 150 blocks old in transparent addresses or IDs) by the staking supply.

To enable staking after verusd is restarted you can add the following to your VRSC.conf file:

```
mint=1
```

or pass -mint to verusd when launching it.

# Enabling StakeGuard

StakeGuard is a system for [solving the Nothing-at-Stake problem](https://medium.com/veruscoin/how-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e). By configuring StakeGuard you have a chance of receiving the ill-gotten staking rewards from those who are trying to cheat the network (or potentially from those who make the mistake of staking their wallet from different computers at the same time, since the network can’t tell these two cases apart).

To enable StakeGuard on the Verus Desktop GUI go to the main wallet screen for Verus and click the green Receive button under Private Balance. Then click the copy icon for an address you’d like your StakeGuard proceeds to go to. If you don’t yet have a private address, click the “new private address” button.

With your private address copied, click on the gear icon in the upper right corner to enter settings, then click on Coin Settings on the left. Make sure Verus(VRSC) is selected in the dropdown right below the settings icon. Then paste your private address into the StakeGuard address field and save your changes.

That’s it for the GUI.

To enable StakeGuard in the CLI wallet you’ll edit your VRSC.conf file and add a z-address in a line formatted like this:

```
cheatcatcher=ZADDR
```

or pass it as a parameter to verusd when launching using the parameter like so:

```
-cheatcatcher=”ZADDR”
```

# UTXO Details

A few notes on some of the finer points of staking — you can ignore this part and do just fine with staking, but this might be useful to you if you’re looking for the _slightly_ deeper dive.

The balance in your wallet is made up of the sum of the transactions that have been sent to an address or VerusID in your wallet that haven’t been spent. When you’re staking it is actually each individual [unspent transaction output (UTXO)](https://blog.komodoplatform.com/en/whats-utxo/) that’s eligible to stake.

When a UTXO stakes it is actually spent, being sent back to the same address again. This means it still shows up in your balance, but it becomes ineligible to stake again for 150 blocks. For the next 150 blocks after a stake you’ll notice that the value of the UTXO that staked will be missing from your eligible staking balance, but also notice that your other UTXOs remain eligible to stake during this period.

For this reason, if you’re staking a large balance you’ll likely have better staking performance by making sure your balance is split up between multiple UTXOs — by having sent it to the wallet in multiple transactions rather than a single large transaction or otherwise redistributing it within the wallet. This keeps a larger portion of your funds available for staking while the successful stakes have to wait 150 blocks to be available for staking again. There are quickly diminishing returns here though, and having too many small transactions can decrease your wallet’s efficiency in scanning all of them for eligible stakes. My recommendation is to not bother breaking up any UTXOs smaller than 5,000 VRSC.

The odds of each individual UTXO staking are independent, and proportional to their value. This means that one 10,000VRSC UTXO has the same odds of staking as a group of ten 1,000VRSC UTXOs.

# Verus Vault

Verus Vault will soon move from Testnet to the main Verus network. Verus Vault allows a VerusID to be locked and prevented from spending until it is unlocked and a specified cooldown time has passed or a specific block height is reached, or until the ID is revoked and recovered. Verus Vault allows the funds in a locked ID to stake, so users protecting their funds this way won’t miss out on staking opportunities.

# Currencies and PBaaS

Also on the Verus Testnet right now is functionality for creating and trading using currencies. I recommend starting with this article on [Verus DeFi](https://medium.com/veruscoin/vbasics-verus-defi-118da0b13f35) to understand more. It is mentioned here to make it clear that currencies on Verus will not be able to stake; only Verus can stake. Also, Verus that resides in the reserves (the liquidity pool) of a fractional currency is unable to stake.

PBaaS (Public Blockchains as a Service) chains have their own coin, which is mineable and/or stakeable on that chain, but not on the Verus network directly.

# Fees and the Fee Pool

In addition to the block reward miners and stakers are rewarded with the fees users pay to have their transactions processed by the network.

Another Testnet feature that will soon migrate to the main Verus network is the fee pool. The fees that go to the miners and stakers (such as transaction fees, ID registration costs, and others) will go into the fee pool, and each miner or staker will get to take 1% of what is in the fee pool along with their block reward. This makes mining/staking proceeds from fees more stable over time, rather than having occasional blocks with high fees from high-fee events like ID registrations. It also helps align incentives by making sure no potentially malicious miner or staker might want to mine for a previous block if the fees were particularly lucrative, since those fees are averaged out over time.

# Troubleshooting

If you believe you’re having problems with staking here are a few things to check:

- Check your eligible staking balance. Funds in a private address (z-address) aren’t eligible to stake. Also any funds received, transacted with, or staked within the last 150 blocks aren’t eligible. So keep these in mind when assessing your eligible balance. If there’s a discrepancy between your wallet balance and your eligible staking balance not explained by these considerations, there might be something to investigate with the help of the [community-support or staking channels on the Verus Discord](https://verus.io/discord).
- Check to ensure that staking is enabled. If you’re using the command line wallet or if you want to look under the hood on the Verus Desktop wallet use the getmininginfo command to see that staking is enabled (“staking”:true) (on the CLI: _verus getmininginfo_ ; in the GUI wallet: Settings->Coin Settings, then _run getmininginfo_ in the command window).
- Check your system clock to make sure your time is accurate.
- Check in with the community on the [Verus Discord](https://verus.io/discord). If you describe your issue in the community-support or staking channels they’ll be able to help, or can put your mind at ease.

One point of confusion worth reviewing — staking on Verus doesn’t provide a steady trickle of proceeds, instead it is all-or-nothing in each block, earning the full block reward plus fees each time, and the frequency with which you stake a block is based on the amount of Verus you have staking. It’s also all a matter of statistical averages, you may have lucky periods and dry spells, the specifics of when you stake and when you don’t are matters of utter randomness and should even out over long periods of time as a matter of averages. If you have a relatively small amount of Verus your staking rewards may be very infrequent, but there’s always a chance, and over a sufficiently long time there’s a good chance you’ll stake at some point.

Good luck and happy staking!

[Verus](https://medium.com/tag/verus?source=post_page-----efbbdc4de951---------------------------------------)

[Staking](https://medium.com/tag/staking?source=post_page-----efbbdc4de951---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----efbbdc4de951---------------------------------------)

[Crypto](https://medium.com/tag/crypto?source=post_page-----efbbdc4de951---------------------------------------)

[How To](https://medium.com/tag/how-to?source=post_page-----efbbdc4de951---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:96:96/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--efbbdc4de951---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:128:128/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--efbbdc4de951---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--efbbdc4de951---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--efbbdc4de951---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--efbbdc4de951---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Lex English](https://miro.medium.com/v2/resize:fill:96:96/1*nvxFlKMtv849EXvrPIdwSw.jpeg)](https://medium.com/@solidfreez?source=post_page---post_author_info--efbbdc4de951---------------------------------------)

[![Lex English](https://miro.medium.com/v2/resize:fill:128:128/1*nvxFlKMtv849EXvrPIdwSw.jpeg)](https://medium.com/@solidfreez?source=post_page---post_author_info--efbbdc4de951---------------------------------------)

Follow

[**Written by Lex English**](https://medium.com/@solidfreez?source=post_page---post_author_info--efbbdc4de951---------------------------------------)

[23 Followers](https://medium.com/@solidfreez/followers?source=post_page---post_author_info--efbbdc4de951---------------------------------------)

· [5 Following](https://medium.com/@solidfreez/following?source=post_page---post_author_info--efbbdc4de951---------------------------------------)

CoFounder, Developer, Evantelist for [Verus.io](http://verus.io/)

Follow

## No responses yet

[Help](https://help.medium.com/hc/en-us?source=post_page-----efbbdc4de951---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----efbbdc4de951---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----efbbdc4de951---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----efbbdc4de951---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----efbbdc4de951---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----efbbdc4de951---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----efbbdc4de951---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----efbbdc4de951---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----efbbdc4de951---------------------------------------)