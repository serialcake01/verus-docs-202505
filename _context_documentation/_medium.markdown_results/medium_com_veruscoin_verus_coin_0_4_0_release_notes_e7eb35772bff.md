[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2Fe7eb35772bff&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-coin-0-4-0-release-notes-e7eb35772bff&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-coin-0-4-0-release-notes-e7eb35772bff&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-e7eb35772bff---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-coin-0-4-0-release-notes-e7eb35772bff&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-e7eb35772bff---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-e7eb35772bff---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-coin-0-4-0-release-notes-e7eb35772bff&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-e7eb35772bff---------------------post_publication_sidebar------------------)

# Verus Coin 0.4.0 Official Release Notes

## \\*\\* OUTDATED Please Visit Verus Site for Latest Release \*\* — Sapling, Crypto-Conditions, StakeGuard (NoS CC Solution), Stake Delegation, GUI Enhancements

[![Oliver](https://miro.medium.com/v2/resize:fill:32:32/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---byline--e7eb35772bff---------------------------------------)

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---byline--e7eb35772bff---------------------------------------)

Follow

6 min read

·

Oct 16, 2018

219

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3De7eb35772bff&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-coin-0-4-0-release-notes-e7eb35772bff&source=---header_actions--e7eb35772bff---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*ZI0KWI5jCUvFAl4kOUq06A.png)

# TLDR: NEW In This Release

- Verus-enhanced Crypto-Conditions (CC)
- StakeGuard CC
- Catching Cheaters Using Stake Guard
- Stake Delegation
- GUI Wallet Enhancements
- Sapling Upgrade (activates at block 227520, ~Oct 30)
- Sapling Zcash Proving Keys

# Download Verus v0.4.0

Verus v0.4.0 can be built from source or downloaded for your OS using the following links.

**This is a mandatory update before October 30th.** All clients must be updated before block 227520.

**Download binary for your OS:**

[https://veruscoin.io/#download](https://veruscoin.io/#download)

_or_

[https://github.com/VerusCoin/VerusCoin/releases/tag/v0.4.0](https://github.com/VerusCoin/VerusCoin/releases/tag/v0.4.0)

**Build from source:**

[https://github.com/VerusCoin/VerusCoin](https://github.com/VerusCoin/VerusCoin)

# IMPORTANT

**IF TWO OF YOUR MACHINES STAKE BLOCKS WITH THE SAME COINS, EACH ON A SEPARATE FORK, YOU CAN NOW LOSE YOUR BLOCK REWARD TO A CHEAT-CATCHER.**

Staking is now OFF by default to prevent unintentional multi-machine staking of the same wallet/address/coins. You can easily enable staking for the various editions of the wallet as follows.

- For CLI “verusd” — Add the `-mint` parameter
- For CLI “verus” command — Call the `setgenerate true 0` command
- For GUI — Click the Staking button

Only stake any given address or wallet on ONE COMPUTER AT A TIME, not more, as you risk losing your rewards due to the anti-cheat features of Verus 0.4.0+ blockchain. This does not apply to mining, you can still mine on as many machines as you’d like.

# Crypto-Conditions and StakeGuard

Verus 0.4.0+ now has a Verus-enhanced, Komodo crypto-condition technology, enabling smart transactions (similar to smart contracts but “on chain”) and new types of on-chain functionalities. Verus has enhanced the original Crypto-Condition (CC) technology to make integration with standard transactions easier and enable advanced blockchain-level logic.

The first CC Verus has developed on-chain is [StakeGuard](https://medium.com/@EthAdvisor/how-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e), the Verus nothing-at-stake solution. StakeGuard works in conjunction with a newly modified signing script when staking and spending a reward. StakeGuard is where every Staking Transaction is processed. Legitimate Stake Reward spends are claimed by the staker. Cheated spends, proven to be cheats, are claimed by the cheat catcher (see below).

In later releases, the same technology will enable PBaaS, voting, identity capabilities, and more.

# Catching Cheaters

StakeGuard, which supports the [nothing at stake solution](https://medium.com/@EthAdvisor/how-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e), includes the functions of catching cheaters in this version of Verus. Stake Guard enables every miner or staker to catch and spend block rewards associated with stake cheating (when someone stakes two blocks with the same coins on two or more forks).

With this early version of Stake Guard, all known orphaned stake transactions are compared to successful stakes when they mature. If the orphan was trying to stake the exact same coins but on a different fork and the real fork at the same time, the miner of the block at maturity of the cheat attempt (100 blocks after the cheat was made) will spend the cheaters one valid reward from the cheat attempt (the reward on the main chain), sending it to a sapling z-addr the miner or staker has set in their wallet. In other words, if, as a miner or staker, your wallet catches and spends such a cheat transaction, the reward for that coinbase will be automatically shielded to your sapling z-address at the same time as you win the block.

This early version of Stake Guard does not broadcast cheating transactions and it will not catch all possible cheats on the network. Future versions will excel at catching cheats on the network.

At this point with this release it is now statistically a losing proposition to cheat. In Verus 0.4.0+ you are now statistically more likely to generate more rewards by not cheating.

Staking the same wallet/coins on more than one computer creates the possibility that you will stake on two forks with the same coins, which puts your earnings at risk as it can create “cheated stakes”, so you should not stake the same address/wallet on more than a single computer at any one time.

_Learn more about StakeGuard and Verus “Nothing at Stake” solution here:_

[**How Verus Solved Nothing at Stake and Weak Subjectivity Proof of Stake Problems** \\
\\
**From ‘Nothing at Stake’ to ‘No Incentive to Cheat’ — Innovating Proof of Stake on the Verus PoS+PoW Hybrid Blockchain**\\
\\
medium.com](https://medium.com/veruscoin/how-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e?source=post_page-----e7eb35772bff---------------------------------------)

# Stake Delegation

In the new Verus network protocol that activates at the same time as Sapling, you can now set the parameter -pubkey in the command line wallet, which will redirect both mining AND staking rewards to the public key of an address, which can be obtained from an address with the “validatekey” command.

# Verus 0.4.0 GUI Improvements

- Performance on large wallets is significantly improved
- Sorting of all columns now works properly
- Separate controls for mining and staking

# Sapling Activation

Verus Coin 0.4.0 includes support for Sapling addresses and transactions, including memory usage reduction of near 98% and performance improvements over previous z-transactions typically 40–50x.

As with Zcash Sapling upgrade rules, older “Sprout” addresses and “Sapling” addresses may not be mixed in the same transaction. That means if you have Verus Coin that you would like to move from an older Sprout z-address to a Sapling z-address, you must first send it to a transparent address, then to the Sapling z-address.

Sapling addresses can be used for shielding coinbase transactions or other functions. Retrieving viewing keys for Sapling addresses, which is not required for normal transactions, is not yet supported, and will be included in the next Sapling technology update.

**Verus will activate Sapling at Verus block height 227520.** With each VerusCoin block approximately 60s, the estimated date for Sapling activation is October 30, 2018. Use the [VerusCoin Explorer](https://explorer.veruscoin.io/network) for the exact current block height.

[**Learn more in-depth detail about Sapling here**](https://medium.com/@EthAdvisor/everything-you-need-to-know-about-the-upcoming-zcash-sapling-upgrade-why-its-so-important-and-b5787cc7b68e).

## New Shielded Address Format & Improved Wallets

A new address format introduces shorter shielded addresses which begin with “zs”.

Sapling z-address format begins with “zs” as in

```
zs1z7rejlpsa98s2rrrfkwmaxu53e4ue0ulcrw0h4x5g8jl04tak0d3mm47vdtahatqrlkngh9sly
```

These new addresses can also be generated at scale within a wallet without computational cost, allowing enterprises and exchanges the flexibility of creating trillions of z-addresses in advance or on the fly.

## Performance for New “zs” Addresses

Shielded transactions with new zs addresses will utilize Saplings performance upgrades wherein payments can be constructed in a few seconds or even <1 second and use as little as 40 MB of memory. Shielded transactions are now possible on mobile or IoT devices.

## Decoupling Spend Authority

Sapling introduces split spending and proving keys. The spending key, used to sign transactions and generate a proving key, is now able to be stored independent of the proving key. The proving key, which handles the complex tasks can be on a separate or untrusted device without posing any risk.

## Zcash Params

New Zcash parameters for Sapling will be downloaded, and are much smaller than earlier params.

## Improved Keys (coming soon)

Viewing keys now support incoming and outgoing transaction detail viewing for owners. An owner can view or share the new full viewing key with a trusted party without exposing their spending key and provide visibility to outbound transaction amounts, memos and target addresses.

![](https://miro.medium.com/v2/resize:fit:487/1*3_tgU4lGUQ8ycoMo4pEMBg.png)

> Get involved in Verus and the Verus community:

**Visit** [**https://veruscoin.io**](https://veruscoin.io/)

# Resources

- [**How Verus Solved Nothing at Stake and Weak Subjectivity for Proof of Work**](https://medium.com/@EthAdvisor/how-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e)
- [**Everything You Need to Know About the Zcash Sapling Upgrade**](https://medium.com/p/b5787cc7b68e)
- [**Ben’s Pocket Guide to VerusCoin for Dummies and Smart People**](https://medium.com/@benohanlon/a-pocket-guide-to-verus-coin-f0c86e976c33)
- [**Komodo Ecosystem Spotlight: Verus Coin**](https://komodoplatform.com/komodo-ecosystem-spotlight-verus/)
- [**Komodo AMA Spotlights VerusCoin**](https://www.reddit.com/r/komodoplatform/comments/9hphen/ama_monday_24th_september_komodos_first_ecosystem/)
- [**Formation of The Verus Coin Foundation with a Vision of PBaaS**](https://medium.com/@veruscoin/announcing-formation-of-the-verus-coin-foundation-with-a-vision-of-public-blockchains-as-a-service-fb5470143fff)

![](https://miro.medium.com/v2/da:true/resize:fit:0/5c50caa54067fd622d2f0fac18392213bf92f6e2fae89b691e62bceb40885e74)

## Sign up to discover human stories that deepen your understanding of the world.

## Free

Distraction-free reading. No ads.

Organize your knowledge with lists and highlights.

Tell your story. Find your audience.

Sign up for free

## Membership

Read member-only stories

Support writers you read most

Earn money for your writing

Listen to audio narrations

Read offline with the Medium app

Try for $5/month

[Verus](https://medium.com/tag/verus?source=post_page-----e7eb35772bff---------------------------------------)

[Zcash](https://medium.com/tag/zcash?source=post_page-----e7eb35772bff---------------------------------------)

[Sapling](https://medium.com/tag/sapling?source=post_page-----e7eb35772bff---------------------------------------)

[Bitcoin](https://medium.com/tag/bitcoin?source=post_page-----e7eb35772bff---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----e7eb35772bff---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--e7eb35772bff---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--e7eb35772bff---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--e7eb35772bff---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--e7eb35772bff---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--e7eb35772bff---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Oliver](https://miro.medium.com/v2/resize:fill:48:48/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--e7eb35772bff---------------------------------------)

[![Oliver](https://miro.medium.com/v2/resize:fill:64:64/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--e7eb35772bff---------------------------------------)

Follow

[**Written by Oliver**](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--e7eb35772bff---------------------------------------)

[252 Followers](https://medium.com/@OliverWestbrook/followers?source=post_page---post_author_info--e7eb35772bff---------------------------------------)

· [20 Following](https://medium.com/@OliverWestbrook/following?source=post_page---post_author_info--e7eb35772bff---------------------------------------)

coding; blockchain; freewriting;

Follow

## No responses yet

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-coin-0-4-0-release-notes-e7eb35772bff&source=---post_responses--e7eb35772bff---------------------respond_sidebar------------------)

Cancel

Respond

## More from Oliver and Verus Coin

[See all from Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--e7eb35772bff---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--e7eb35772bff---------------------------------------)

## Recommended from Medium

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--e7eb35772bff---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----e7eb35772bff---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----e7eb35772bff---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----e7eb35772bff---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----e7eb35772bff---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----e7eb35772bff---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----e7eb35772bff---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----e7eb35772bff---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----e7eb35772bff---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----e7eb35772bff---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=Hi8UmRMnhdOBM3IuViTkapUP&size=invisible&cb=qj4ce5tdia07)