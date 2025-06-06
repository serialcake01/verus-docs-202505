[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2Fb4dd6a85086e&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-b4dd6a85086e---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-b4dd6a85086e---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-b4dd6a85086e---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-b4dd6a85086e---------------------post_publication_sidebar------------------)

# How Verus Solved Proof of Stake’s Two Biggest Problems: Nothing at Stake and Weak Subjectivity

## From ‘Nothing at Stake’ to ‘No Incentive to Cheat’ — Innovating Proof of Stake on the Verus PoS+PoW Hybrid Blockchain

[![Oliver](https://miro.medium.com/v2/resize:fill:32:32/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---byline--b4dd6a85086e---------------------------------------)

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---byline--b4dd6a85086e---------------------------------------)

Follow

13 min read

·

Oct 7, 2018

864

2

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3Db4dd6a85086e&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e&source=---header_actions--b4dd6a85086e---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*i304yCjrJU8aW1cysPgGGw.png)

# A Revolutionary Shift

[Verus, the CPU-minable community project](https://veruscoin.io/) which combines Proof of Work, Proof of Stake, and Delayed Proof of Work in a fork of Komodo, has just solved the biggest problems which threaten current Proof of Stake blockchains.

Mike Toutonghi, lead developer at Verus decided as a part of extending the capabilities of the Verus blockchain, to tackle the most famous theoretical problem threatening Proof of Stake blockchains: the Nothing at Stake problem.

> The solution is so simple and elegant and built right into the Verus Blockchain.

Set to be released in the upcoming upgrade to the Verus blockchain where Verus Sapling will also be released, this **solution brings one of the longest debates surrounding the security and reliability of Proof of Stake, to a screeching halt.**

In this article I’ll do my best to address this subject with both the technical and non-technical readers in mind and explain things as simply and accurately as possible.

# Two Proof of Stake Problems

Proof of Stake (PoS), unlike PoW, does not require computational power to generate blocks or reward the participants in the consensus. Rather, based on a “Staking Algorithm” developed by the blockchain developers, stakers simply run the staking wallet for the blockchain and have that blockchain’s cryptocurrency in the wallet as their staking balance.

The staking software then generates one single “vote” per block, which is essentially a prediction of the next block, and submits the vote to determine if the staker won. It’s essentially a “free vote”, besides the cost of crypto funds in the staker’s wallet to participate.

## Nothing at Stake

With “voting” on the next block not requiring expensive computational power or external costs such as electricity, etc, as in PoW, staking is essentially a cost-free endeavor. The only cost involved is the stake of the blockchain’s currency into the staking wallet.

A normal outcome in any blockchain is when more than one block is generated simultaneously. In cases such as this, in a normal and cheat free chain, one block is kept and the chain keeps building on down that path…while the other block is orphaned.

With generating a vote being free with no intensive computer work necessary, **what’s to stop a nefarious staker from casting a double vote? One for the block upon which the chain continues to build..and one on the orphaned or “forked” chain as well?** In fact, since votes are free, why not generate many votes every block, to potentially multiply block rewards…effectively double spending on the network?

This, in a very basic nutshell, is known as the “nothing at stake” problem which is theorized as an argument against PoS being a good and secure consensus mechanism. **This nothing at stake problem results in a threat to the security, reliability and immutability of a blockchain and therefore threatens it’s existence.**

## Weak Subjectivity

Subjectivity in blockchain is the theory that there can be multiple potential versions of a blockchain which appear correct. This is fine so long as the software being used to connect to the blockchain cannot automatically choose between these.

Subjectivity is discussed in Proof of Stake because, unlike Proof of Work, there is no objective chain with most proven computational work to find the correct ledger.

**Weak Subjectivity specifically, is the theory that subjectivity is a problem over a short period of time**…but not over a long period of time.

In the case of Proof of Stake vs Proof of Work, this **becomes an area of concern for the validity and security of a blockchain, especially when measured against Proof of Work** and validating a chain based on most work…the longest chain or “most work” rule.

Without “most work” how would you strengthen the subjectivity of the blockchain, moving it towards a more objective chain?

## The Race to Solve the Nothing at Stake Problem

Until now most attempts at solving this very critical theoretical problem are based in “after the fact” defense and “punishment” mechanisms to try to punish cheating which may occur.

**Such solution attempts are not approaching the problem in the way which models Proof of Work**…wherein the cheating doesn’t occur in the first place due to the design of the blockchain. Instead many are tacking on voting and approval systems which add complex layers and then have to “detangle” the complexity of who’s cheating, who’s playing fair, and how to punish the cheaters.

From proposals of complex, computationally heavy, time-costly and punishment-based approaches…to centralized systems designed to analyze and choose the legitimate blocks and react to cheating… **every attempt at solving this problem to date, comes at either great cost of performance, principle, or complexity and convolution of code.**

In short, **most attempts are a reactionary approach** which is not inherent within the PoS or blockchain code. What has always given PoW the upper hand is it’s simplicity and implicity.

# Something at Stake, Simply and Implicitly

**Verus has solved the problem of Nothing at Stake while removing Weak Subjectivity.** This innovative improvement coming to the Verus blockchain is removing any incentive to attempt cheating, making it a losing proposition. **This, combined with a new “Chain Power” rule which will replace “Chain Work”, presents the PoW+PoS blockchain as a far superior consensus model over PoW.**

## To Catch a Cheater

Before digging into the crazy complicated blockchain lingo, **let’s walk through the process of someone attempting to cheat on the new Verus upgraded blockchain**, and see how it works in plain English.

For starters the cheater needs to develop a specialized wallet which will attempt the cheats. Let’s call our nefarious clever cheater Jamie.

Jamie loads up her self-coded/modified cheat wallet with some Verus and begins staking on the Verus blockchain. Let’s say to cheat she is simply trying to “double spend” by casting her votes on both the main chain and any forked or orphaned block at the time of staking.

When Jamie does this and “wins” a block reward, that reward is immature for 100 blocks before it can be spent. At this time she sees the reward in her wallet. On the forked/orphaned chain she has a duplicate stake voted, with a matching UTXO to the main chain’s stake. At maturity, she plans on pulling a fast one and double spending.

**Meanwhile, Stacy is scanning the blockchain hunting for cheat rewards.** Her scan catches Jamie’s cheat attempt. What does this mean?

100 blocks passes and when the reward matures it gets spent, meaning it is “shielded” which is how Coinbase Rewards are spent after maturing. But, **cheater Jamie didn’t even get a chance to shield it…it now shows as spent and in place of the funds on the blockchain is proof that she was cheating in the form of her double stake on the fork.**

**Stacy has taken the reward and it’s now in her private address**, ready to unshield and add to her wallet. A nice little bonus of “free money” for finding the cheated transaction.

Had Jamie simply staked as normal, without cheating, she would never risk losing her reward.

And here’s the coolest part. **All of this occurs on the blockchain level.** There is no need for any special layers, filtering or convolution, or centralization to be added.

**It’s also a completely decentralized solution**, motivating the entire network to participate in finding and catching cheaters. After all, for 100 blocks **any such cheated rewards will be visible and locked up in “immaturity”, giving motivated “cheat hunters” the opportunity scan and find such transactions.**

This decentralized anti-cheat process will be built into Verus mining software, meaning the most likely person to spend the cheater’s block reward will be the miner who mines the block at which the cheater reward matures.

And in the meantime, that other staked block, the one that gave away the cheater, is **unable to be double spent. Because the rule is in place that only allows the UTXO to be spent once by either the owner/originator or the cheat hunter.**

# Unpacking the Technical Stuff

By “rewiring” the way in which Verus performs staking, the blockchain is approaching staking fundamentally similar to how mining works. Within Verus you have the same probabilistic selection based on Staking Power as with Proof of Work. This means you don’t have to pre-invest stake, in order to stake.

The Verus blockchain inherently makes staking equivocal with mining in probability, fairness, and security while obliterating the nothing at stake problem and weak subjectivity (which I’ll discuss in a moment)… **resulting in a blockchain that is arguably more robust, secure, and capable than a simple PoW chain.**

## Verus Crypto Conditions

Crypto Conditions, or CC, are smart contracts for Komodo-based blockchains. Developed by Komodo, CCs extend the capabilities of a bitcoin-type blockchain to allow more functionality and scripting on the blockchain level.

To effectively use CCs for Verus’ purposes, **Mike extended some of the capabilities of Crypto Conditions, particularly adding more meta data definitions and allowing CC transactions to act more like “normal” transactions.** With the modified CCs Verus is able to implement powerful functionality that extends the flexibility and resultant power of the Verus blockchain in preparation for PBaaS and the services which will be able to be coded into blockchains in the future.

**Stake Guard is the first Verus Crypto Condition to be released and it’s what solves the “nothing at stake” problem and performs the “magic”.**

## Stake Guard — The Proof of Stake Crypto Condition

This new CC which Verus has developed and is adding to the blockchain, works in conjunction with a newly modified signing script when staking and spending a reward.

The result is a blockchain-level Crypto Condition which handles all staking transaction spends, either processing them as usual for normal shakers, or allowing any cheated stake transaction containing its stake block reward to be spent by anyone who can prove its indeed a cheaters stake. No double spending occurs at any point, to cheat the cheater had a real stake plus additional cheat attempts at any given block. Only the legitimate stake reward can be spent when proven.

**Here’s how it works.**

1. **When staking a new block, a new format of transaction called a Staking Transaction is generated.** This transaction format is enforced and utilizes the Stake Guard at the minting of the new block. It contains more meta data, such as the public key of the staker who signed it, the UTXO, the block height, and previous block height.
2. If a cheater has tried to stake on more forks at the same block height, that cheat attempt is also recorded. **Anyone scanning the blockchain can see it and verify that it’s indeed a cheat attempt**, as the data is there immutably and without the ability to manipulate things like UTXO or information about the blockchain at the time of the stake.
3. For the community, **this is an opportunity of 100 blocks to look for any such cheat attempts and tuck them away to take at that cheat transactions maturity.** Also important to note: UTXO can only be spent once, so there’s no risk of double spending at this point. **And the cheater’s one valid block reward is able to be taken by anyone who sees it and spends it at block maturity.**
4. **After 100 blocks when any block reward is spent, it passes through the Stake Guard** Crypto Condition script which evaluates the spend transaction for 1 of 2 things:

**Condition a** — Is this spend being signed by the Public Key which staked it?

**Condition b**— Is proof presented in the OP\_RETURN that this is a cheater’s block reward?

**Result**— Depending on one of the two conditions being met, Stake Guard will validate or reject the spend.
5. **Condition a: if a normal staker is trying to shield their stake reward**, their public key is being passed automatically to Stake Guard which compares it to the public key in the meta data of the stake transaction on the blockchain. They match, so **it signs it as normal and the staker has their reward.**
6. **Condition b: if the public key of the spender does NOT match the original staker public key, Stake Guard verifies that the cheat transaction proof has been submitted in the OP\_RETURN.**
7. The proof of a cheated transaction, the data bits packed up from that duplicate stake transaction which the Cheat Hunter found, is passed in an OP\_RETURN and the **Stake Guard CC evaluates and confirms that it is indeed a verifiable cheated transaction. It does this by comparing the matching UTXOs of the legitimate and cheated staking transactions**, their respective previous block heights, and their respective block heights at the time they were generated. In fact, **this is another case of validating signatures to cryptographically verify that the stake transaction was properly signed, meaning proof of cheating cannot be forged.**
8. **If Stake Guard confirms the cheat transaction is indeed a cheat, the spend of the cheaters stake reward at the time of the cheat, is signed using the Stake Guard’s key** and spent to the shielded address provided by the person who claimed the cheater’s reward. **The wallet of the person who found the cheat reward is paid the block reward and it disappears from the cheater’s wallet.**

## Decentralized Anti-Cheat Staking

As mentioned above, **for legitimate stakers the Stake Guard CC will function normally**, signing the coinbase reward transaction when they spend it with their own Public Key…all in the background and at the blockchain level.

If, however, the 1 of 2 evaluation sees the public key of the person trying to spend it doesn’t match that of the original staker it simply **verifies the person trying to take the free money from the cheater has proven that this is indeed a cheated transaction which they discovered and if so, will let them take it.**

This can be done by anyone who knows how to pack up the data after scanning and finding cheat attempt staking transactions…but **will also be implemented into the mining software by Verus** to perform the attempted spend of the cheaters reward block when mining at the block where that cheat reward matures.

## No Incentive to Cheat

The cheaters one single legitimate reward block out of the two attempts they made to double spend, is no longer locked in to be spent by them alone. **Anyone can now spend this by simply proving to the Stake Guard CC the verified cheat transaction hash in an OP\_RETURN.**

So, while even the cheater can try to run and grab it with the rest of the network, or try to spend it before anyone else, **now the odds are stacked against them…and why even cheat?** Afterall, there is no double spend available due to the fundamental way in which the blockchain is modified with this Stake Guard.

**It simply makes no sense, using the same logic PoW uses, decentralizing the process of catching and being rewarded for finding cheat transactions by getting the cheaters reward**, and makes legitimate staking more rewarding by itself. And if cheaters do try anyway, the legitimate staker has a better chance of even claiming those rewards which the system makes publicly visible.

# Chain Power and Nonce

Another important change being implemented in this new Verus upgrade is moving away from Chain Work to what Verus is calling Chain Power. Chain Power is now replacing Chain Work, solving the threat of Weak Subjectivity.

## Chain Work

Within chain work, the block index is a sequential index of block entries which “knows the height” of the chain. As you build and add blocks, you add the entry to the block index.

This way at any point you have a maintained value that reflects the chain work at that point. The Chain Work is normally a sum of the proof of work difficulty, for any set of blocks.

## Chain Power

Chain Power is a 50% of one value and 50% of another value comparative calculation. It’s a tracking of both Work and Stake.

Chain Work is based on a number that everyone calculates the same on every block. You can’t be completely sure of the time and date someone makes a block. So on a very small scale someone could make it seem like they had a little more work, just for a moment.

**With Chain Power Verus will not just take the Proof of Stake difficulty, it also takes the actual nonce random amount of work from every block, adding it as additional Stake Power**. This way no two blocks will match and there’s no way to manipulate this value.

This nonce “work” number will be added to the Stake Difficulty. Someone can’t just grind away at this as a result.

**And so, Verus, as a “hybrid” combination of Proof of Stake and Proof of Work, will now have a value which is calculated from a comparison between Stake and Work.** If stake power is at 20% and work power is at 30% for example, that is a sum total of 50% Chain Power.

What this means is, to attack the blockchain in a way in which weak subjectivity is a problem, the attacker would need to have more than 50% of either staking or mining power given the above example.

> **The implications of this are massive, making a hybrid Chain Power blockchain like Verus a weak subjectivity resistant chain and adding capabilities that far outweigh the security of traditional Chain Work in Proof of Work chains.**

Finally, Verus adds to this Chain Power “powerhouse” mechanism, delayed Proof of Work (dPoW) by Komodo, extending it’s security even further. Arguably not even necessary given the advancement of Chain Power, dPoW is an additional layer of security and immutability against attack attempts.

# The Magic in the Logic

**These improvements and innovations are being released along with Verus Sapling**, the latest upgrade from Zcash which Verus is activating at block 227520 (October 30, 2018).

In speaking with Mike over the past week it also became apparent to me how wide the gap is between the confidence of brilliant developers such as those in the Verus community and that of investors and not-so-technical community members, who have grown to feel most comfortable and confident with ol’ trusty PoW. Closing this gap will take time and understanding of exactly how these innovations are designed and implemented.

**I hope this article can serve as a starting point in understanding and diving deeper into the genius of these innovations by Verus.** Innovations which now put Proof of Stake on equal footing with Proof of Work, using the very same psychology and fundamentals, without sacrificing principle, cost, complexity or decentralization.

From inception, Verus has been a trailblazer in the blockchain space, from the fair non-ico / no-premine launch, to the innovation of VerusHash, to the implementation of a 50/50 Stake/Mine +dPoW blockchain design, to the only project besides Zcash to be activating Sapling…and now a simultaneous release of the most advanced and truly “Something at Stake” PoS solution with no weak subjectivity.

I’m excited and proud to be involved with this community project and am busting at the seams with excitement over this incredible impending upgrade.

As technically sound and logically constructed as these innovations within Verus blockchain are, there’s also the irresistible feeling of magic about it all. Especially when you see the talent of these developers demonstrated in solving the most pressing problems in Proof of Stake previously thought inherent.

## Resources

- [Verus Vision Paper](http://185.25.51.16/papers/VerusVision.pdf)
- [Verus White Paper](http://185.25.51.16/papers/VerusPhaseI.pdf)
- [Verus Official Site](https://veruscoin.io/)
- [Introduction to Komodo’s Crypto Conditions](https://komodoplatform.com/crypto-conditions-utxo-based-smart-contracts/)
- [Pocket Guide to Verus Coin](https://medium.com/@benohanlon/a-pocket-guide-to-verus-coin-f0c86e976c33)
- [About Sapling](https://medium.com/@EthAdvisor/everything-you-need-to-know-about-the-upcoming-zcash-sapling-upgrade-why-its-so-important-and-b5787cc7b68e)
- [Understanding the Nothing at Stake Problem](https://medium.com/coinmonks/understanding-proof-of-stake-the-nothing-at-stake-theory-1f0d71bc027)
- [Understanding Weak Subjectivity](https://blog.ethereum.org/2014/11/25/proof-stake-learned-love-weak-subjectivity/)

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

[Zcash](https://medium.com/tag/zcash?source=post_page-----b4dd6a85086e---------------------------------------)

[Verus](https://medium.com/tag/verus?source=post_page-----b4dd6a85086e---------------------------------------)

[Proof Of Stake](https://medium.com/tag/proof-of-stake?source=post_page-----b4dd6a85086e---------------------------------------)

[Blockchain](https://medium.com/tag/blockchain?source=post_page-----b4dd6a85086e---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----b4dd6a85086e---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--b4dd6a85086e---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--b4dd6a85086e---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--b4dd6a85086e---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--b4dd6a85086e---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--b4dd6a85086e---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Oliver](https://miro.medium.com/v2/resize:fill:48:48/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--b4dd6a85086e---------------------------------------)

[![Oliver](https://miro.medium.com/v2/resize:fill:64:64/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--b4dd6a85086e---------------------------------------)

Follow

[**Written by Oliver**](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--b4dd6a85086e---------------------------------------)

[252 Followers](https://medium.com/@OliverWestbrook/followers?source=post_page---post_author_info--b4dd6a85086e---------------------------------------)

· [20 Following](https://medium.com/@OliverWestbrook/following?source=post_page---post_author_info--b4dd6a85086e---------------------------------------)

coding; blockchain; freewriting;

Follow

## Responses (2)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e&source=---post_responses--b4dd6a85086e---------------------respond_sidebar------------------)

Cancel

Respond

[![Henk van Cann](https://miro.medium.com/v2/resize:fill:32:32/1*-tT95hZpqcQq45gEaDKNOg.jpeg)](https://medium.com/@hvancann?source=post_page---post_responses--b4dd6a85086e----0-----------------------------------)

[Henk van Cann](https://medium.com/@hvancann?source=post_page---post_responses--b4dd6a85086e----0-----------------------------------)

[Oct 10, 2018 (edited)](https://medium.com/@hvancann/hi-john-thanks-for-the-explanation-so-far-17a4eff3b30d?source=post_page---post_responses--b4dd6a85086e----0-----------------------------------)

```

Hi John, thanks for the explanation so far. What about the problem of the majority of votes on future changes, discussed here: https://twitter.com/henkvancann/status/1048261898674888704

Could you elaborate on that? Because no matter how clever the…more
```

24

1 reply

Reply

[![GrowYourCrypto Enzo](https://miro.medium.com/v2/resize:fill:32:32/0*Ci4qK-GQpX8vqweh)](https://medium.com/@GrowYourCryptoOG?source=post_page---post_responses--b4dd6a85086e----1-----------------------------------)

[GrowYourCrypto Enzo](https://medium.com/@GrowYourCryptoOG?source=post_page---post_responses--b4dd6a85086e----1-----------------------------------)

[Sep 23, 2022](https://medium.com/@GrowYourCryptoOG/awesome-article-pity-i-only-see-it-4y-later-but-just-a-note-on-the-resources-the-links-are-30f1aa8e8f27?source=post_page---post_responses--b4dd6a85086e----1-----------------------------------)

```

Awesome article, pity I only see it 4y later, but just a note on the resources, the links are outdated
```

Reply

## More from Oliver and Verus Coin

[See all from Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--b4dd6a85086e---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--b4dd6a85086e---------------------------------------)

## Recommended from Medium

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--b4dd6a85086e---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----b4dd6a85086e---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----b4dd6a85086e---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----b4dd6a85086e---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----b4dd6a85086e---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----b4dd6a85086e---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----b4dd6a85086e---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----b4dd6a85086e---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----b4dd6a85086e---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----b4dd6a85086e---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=Hi8UmRMnhdOBM3IuViTkapUP&size=invisible&cb=6y7fjt62mcek)