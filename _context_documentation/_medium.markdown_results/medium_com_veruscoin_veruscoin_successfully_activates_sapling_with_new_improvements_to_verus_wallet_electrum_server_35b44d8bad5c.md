[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2F35b44d8bad5c&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fveruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fveruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-35b44d8bad5c---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fveruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-35b44d8bad5c---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-35b44d8bad5c---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fveruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-35b44d8bad5c---------------------post_publication_sidebar------------------)

# VerusCoin Successfully Activates Sapling with New Improvements to Verus Wallet, Electrum Server and Pool Software

## Latest Developments: Verus Wallet v0.4.0c and later with Stake Guard (NoS Solution) and Other Improved Features; Verus Electrum Server with Sapling Support; Sapling Compatible Pool Software

[![Oliver](https://miro.medium.com/v2/resize:fill:32:32/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---byline--35b44d8bad5c---------------------------------------)

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---byline--35b44d8bad5c---------------------------------------)

Follow

7 min read

·

Oct 30, 2018

210

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3D35b44d8bad5c&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fveruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c&source=---header_actions--35b44d8bad5c---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*opv2p7X_veiAa9B58sAF7A.png)

The Sapling upgrade has activated on VerusCoin blockchain at blockheight 227520 and the latest innovations, improvements and features are now active for all users running Verus Wallet v0.4.0c and newer. Users are already actively taking some of the revolutionary features for a “spin” with reports of near 1 second (and some sub-1 second) shielded transactions!

In tests with a basic 1GB VPS, for example, I clocked 1.29sec shielding time for shielding a coinbase. This same server would utilize nearly 4 GB of Swap and take between 6 and 10 minutes prior to the activation.

If you have not yet upgraded, follow these steps to upgrade to the latest version now:

[**How to Update or Install Verus GUI Wallet v0.4.0h for Linux or Windows**](https://medium.com/p/686fc7a5b6e7)

# Verus Wallet v0.4.0c Release Notes

This update, released prior to Sapling activation on the VerusCoin blockchain, includes some important and groundbreaking features and tech. Verus v0.4.0 saw the innovation and advancements of Sapling support, the first Crypto-Condition “Stake Guard” which implements a mechanism for finding and catching cheated stake blocks and [effectively solving “Nothing at Stake”…the big Proof of Stake theoretical problem](https://medium.com/veruscoin/how-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e).

In the **“c” and later** (currently at “h”) edition of Verus, a few new exciting improvements and features have been added.

## Catching Cheaters

As you may have read in the [Verus Official Release Notes for v0.4.0](https://medium.com/veruscoin/verus-coin-0-4-0-release-notes-e7eb35772bff), the first Crypto-Condition of Verus called Stake Guard was added in lieu of Sapling activation. As of Verus v0.4.0c **the Stake Guard CC has activated and can now earn users extra Verus coins by catching cheaters.**

The Stake Guard technology built into Verus Wallet **actively identifies staking wallets which are claiming duplicate blocks on more than one version of the blockchain, using the same staked coins.** Once a cheater is identified, the mining or staking wallet which found the cheater is able to spend any actual single reward the cheating wallet won from the main chain.

With the new Verus-enhanced features of Sapling and Stake Guard activated as of block height 227520, **any miner or staker can enable Stake Guard (see below for instructions) and their node (native wallet) will begin “hunting for” and catching any cheaters found.**

Users assign a new Sapling zs-address as their “cheatcatcher” address for collecting the coinbases from any found cheated blocks. Only the single coinbase that generated on the main chain (not the forks) of a given cheated stake block height are able to be claimed by a cheat catcher. **No new coins are minted and no double spending occurs from any forked chain either by the cheater or the miner who caught the cheater.**

Once you’ve set your Stake Guard zs-address, your full “Native Mode” wallet which is either mining or staking will also be hunting down any instances where the same winning coins are being used across different forks and with the same private key. **If your wallet finds such a fork, your wallet will hold the cryptographic proof and spend the single real stake reward from the main chain of that block height.** This is done automagically by your wallet at the time of that **cheater’s stake reward becoming mature and by utilizing the Stake Guard CC’s condition, to allow a proven cheat spend to spend the coinbase in question.**

Any miner or staker who sets the “cheatcatcher” zs-address parameter may find an additional shielded coinbase in their cheat catching address! Again, this is not new coins being created, it’s literally spending the cheaters single “legitimate” coinbase from the block height at which they cheated, sending it to your zs-address before they can spend it.

Miners and stakers **may also earn a cheat reward from Stake Guard when they don’t earn a normal block reward as it is an equally fair functionality**(when enabled) across the entire network of miners and stakers, not weighted by staking or mining power, rather dependent on which wallet “sees” the identifiable cheated fork.

Beyond setting your wallet up to catch cheaters, another important implication of this advancement is to also ensure you are not inadvertently cheating. **If you stake on the same wallet across multiple computers, you will most likely lose your staked rewards.** You should only stake from one wallet per computer at any time. While you can open the same wallet on two computers, make sure only one of those is staking and the other is not to avoid losing your coinbase rewards!

**How to Enable Stake Guard:**

Enabling Stake Guard is simple. Following are steps for both CLI and GUI.

> **_For CLI Wallet:_**

- First generate a new Sapling-type zs-address with command:

`./verus-cli/verus z_getnewaddress sapling` which will echo back your new zs-address.
- Start your Verus daemon with the parameter `-cheatcatcher=zsaddr` where “zsaddr” is your new zs-address.

For example, to start the daemon staking and with Stake Guard enabled, you would run: `./verus-cli/verusd -mint -cheatcatcher=zsaddr`

> **_For GUI Wallet:_**

- First generate a new Sapling-type zs-address from the Send section by **choosing “Private Address (Sapling)” from the Get New Address** drop down:

![](https://miro.medium.com/v2/resize:fit:388/1*p4Wq7UVb3v5QuiWUlczO0g.png)

- Next, copy that new address by clicking the 3 vertical dots on the left of the new “zs” address in your list, and **clicking “Copy Pub Key”**

![](https://miro.medium.com/v2/resize:fit:279/1*bPTx45iDOtidwzkkzuxhHQ.png)

- Navigate to the Settings (top right menu) and expand “App Config (config.json)”, then scroll down and **paste your zs-address into the field labeled “Your VRSC sapling address for receiving funds cheaters attempt to steal”**

![](https://miro.medium.com/v2/resize:fit:555/1*ZzXfEibcOtTrvO-lHwfm0Q.png)

- Lastly, save your settings by **scrolling down and clicking “Save app config”.** For good measure, close Verus Agama, wait for it to shutdown completely, then open again.

![](https://miro.medium.com/v2/resize:fit:630/1*wcqJO2QtEd6TO-6jY6B0EQ.png)

## Lite Mode Sapling Transactions

The Verus v0.4.0f GUI wallet has new support coded in for Sapling-compatible Lite Mode transactions. With the new developments to the Verus Electrum server, enabling Sapling support, **users are able to perform the new zs-address lightning-fast shielding transactions within the lite wallet!** This support is for both VerusCoin and Zcash networks when using the “d” version of the Verus GUI wallet.

## Improved Multi-Coin Support

Another important improvement Verus made in this version of the wallet is better support for multiple coins. **Verus wallet supports Bitcoin, Litecoin, Zcash (with Sapling enabled), and Dash by default** along with most of the Komodo ecosystem coins.

Verus is also working to include Pirate (ARRR) in a future release and will continue to keep the wallet on the cutting edge as a multi-coin wallet.

## Additional Fixes and Improvements

This edition of the Verus wallet also fixes a few other issues and improvements, including:

- Fixed: Some non-Latin usernames cause failure to load
- Fixed: Wallet balance can get out of sync with blockchain when staking
- To fix any out-of-sync issues, perform a Rescan by doing the following:

**For CLI**

Add the parameter `-rescan` when starting the daemon

**For GUI**

When starting the GUI click “Activate Coin”, not the dropdown shortcut

Choose “Verus” from the modal and select “Native mode”

Select the “daemon param: rescan” option

Click “Activate Coin”

# Further Important Developments by Verus

In addition to this important and ground-breaking update to the Wallet, Verus completed two very important developments in support of the newly improved blockchain upgrade: Electrum and Pool Software.

## Sapling Enabled Electrum Server

Verus has enhanced their Electrum Server for Sapling support, making Lite Mode Sapling Z-Transactions possible. Lead developer Mike Toutonghi first noticed that his attempts at finding an Electrum server which would support the new Sapling transactions, were fruitless.

**As a result, Mike coded the support into the Verus Electrum server, which has been fully tested and seamlessly activated along with the blockchain Sapling activation at VerusCoin block height 227520.**

The Verus Electrum server is able to be used to successfully handle Sapling transactions for “Lite Mode” of Verus and Zcash from the latest Verus v0.4.0f wallet update. This support has been tested and is deployed on Verus’ Electrum Server for use with all lite mode transactions.

## Sapling Enabled Pool Software

Being thorough and excellent are two very important qualities to which Verus holds true. Providing fully Sapling compatible pool software is another example of this commitment to the community and the project.

Verus has coded Sapling support into the Pool Software. This software can be used by any Zcash fork which activates Sapling!

# Get involved in Verus and the Verus community

**Visit** [**https://veruscoin.io**](https://veruscoin.io/) **Discord** [**https://discord.gg/VRKMP2S**](https://discord.gg/VRKMP2S)

# Resources

- [**How to Update or Install Verus GUI Enhanced Agama Wallet**](https://medium.com/veruscoin/how-to-update-veruscoin-graphical-gui-wallet-to-0-4-0a-for-linux-686fc7a5b6e7)
- [**Verus Coin v0.4.0 Official Release Notes**](https://medium.com/veruscoin/verus-coin-0-4-0-release-notes-e7eb35772bff)
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

[Bitcoin](https://medium.com/tag/bitcoin?source=post_page-----35b44d8bad5c---------------------------------------)

[Verus](https://medium.com/tag/verus?source=post_page-----35b44d8bad5c---------------------------------------)

[Zcash](https://medium.com/tag/zcash?source=post_page-----35b44d8bad5c---------------------------------------)

[Blockchain](https://medium.com/tag/blockchain?source=post_page-----35b44d8bad5c---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----35b44d8bad5c---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--35b44d8bad5c---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--35b44d8bad5c---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--35b44d8bad5c---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--35b44d8bad5c---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--35b44d8bad5c---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Oliver](https://miro.medium.com/v2/resize:fill:48:48/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--35b44d8bad5c---------------------------------------)

[![Oliver](https://miro.medium.com/v2/resize:fill:64:64/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--35b44d8bad5c---------------------------------------)

Follow

[**Written by Oliver**](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--35b44d8bad5c---------------------------------------)

[252 Followers](https://medium.com/@OliverWestbrook/followers?source=post_page---post_author_info--35b44d8bad5c---------------------------------------)

· [20 Following](https://medium.com/@OliverWestbrook/following?source=post_page---post_author_info--35b44d8bad5c---------------------------------------)

coding; blockchain; freewriting;

Follow

## No responses yet

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fveruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c&source=---post_responses--35b44d8bad5c---------------------respond_sidebar------------------)

Cancel

Respond

## More from Oliver and Verus Coin

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c----0---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c----0---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

by

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--35b44d8bad5c----0---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

[**How to Start CPU Mining Verus Coin VRSC from Your Computer in Under 5 Minutes**\\
\\
**A Dummies Step by Step Guide to Pool Mining Verus Coin with a CPU!**](https://medium.com/veruscoin/how-to-start-cpu-mining-verus-coin-vrsc-from-your-laptop-in-under-5-minutes-f69c9aae340e?source=post_page---author_recirc--35b44d8bad5c----0---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

Jan 9, 2019

[332\\
\\
1](https://medium.com/veruscoin/how-to-start-cpu-mining-verus-coin-vrsc-from-your-laptop-in-under-5-minutes-f69c9aae340e?source=post_page---author_recirc--35b44d8bad5c----0---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c----1---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c----1---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

by

[Max Theyse](https://medium.com/@meyse?source=post_page---author_recirc--35b44d8bad5c----1---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

[**Verus: Profit Generating Protocol for Miners and Stakers**\\
\\
**Future and present Verus miners: take notice. Be ready to maximize profit with your hardware. Mine up to 22 blockchains with the same…**](https://medium.com/veruscoin/verus-profit-generating-protocol-for-miners-and-stakers-2d2b454aa330?source=post_page---author_recirc--35b44d8bad5c----1---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

May 11, 2021

[311](https://medium.com/veruscoin/verus-profit-generating-protocol-for-miners-and-stakers-2d2b454aa330?source=post_page---author_recirc--35b44d8bad5c----1---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c----2---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c----2---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

by

[Lex English](https://medium.com/@solidfreez?source=post_page---author_recirc--35b44d8bad5c----2---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

[**Verus Beginner’s Staking Guide**\\
\\
**Introduction to staking and earning rewards on Verus (VRSC)**](https://medium.com/veruscoin/verus-beginners-staking-guide-efbbdc4de951?source=post_page---author_recirc--35b44d8bad5c----2---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

Mar 8, 2021

[238](https://medium.com/veruscoin/verus-beginners-staking-guide-efbbdc4de951?source=post_page---author_recirc--35b44d8bad5c----2---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c----3---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c----3---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

by

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--35b44d8bad5c----3---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

[**How to Earn VRSC Mining with Your CPU and Staking Mined Coins!**\\
\\
**Easy step by step guide to CPU solo mining Verus Coin (VRSC) on your computer using the Verus Agama wallet + How to Stake and earn more…**](https://medium.com/veruscoin/how-to-earn-vrsc-solo-mining-with-your-cpu-and-staking-mined-coins-aa27da76882c?source=post_page---author_recirc--35b44d8bad5c----3---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

Jan 11, 2019

[296\\
\\
2](https://medium.com/veruscoin/how-to-earn-vrsc-solo-mining-with-your-cpu-and-staking-mined-coins-aa27da76882c?source=post_page---author_recirc--35b44d8bad5c----3---------------------0b1832ca_0cf2_499b_959e_6c30c26750ae--------------)

[See all from Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--35b44d8bad5c---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--35b44d8bad5c---------------------------------------)

## Recommended from Medium

[![Coding Beauty](https://miro.medium.com/v2/resize:fill:20:20/1*ViyWUoh4zqx294no1eENxw.png)](https://medium.com/coding-beauty?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

In

[Coding Beauty](https://medium.com/coding-beauty?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

by

[Tari Ibaba](https://medium.com/@tariibaba?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[**This new IDE from Google is an absolute game changer**\\
\\
**This new IDE from Google is seriously revolutionary.**](https://medium.com/coding-beauty/new-google-project-idx-fae1fdd079c7?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

Mar 11

[5K\\
\\
294](https://medium.com/coding-beauty/new-google-project-idx-fae1fdd079c7?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[![Learn AI for Profit](https://miro.medium.com/v2/resize:fill:20:20/1*MDbgiQN0r_f0k9x45YcB7g.png)](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

In

[Learn AI for Profit](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

by

[Nipuna Maduranga](https://medium.com/@techtheboy?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[**You Can Make Money With AI Without Quitting Your Job**\\
\\
**I’m doing it, 2 hours a day**](https://medium.com/writing-for-profit-with-ai/you-can-make-money-with-ai-without-quitting-your-job-5296bbcb703b?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

Mar 24

[8.2K\\
\\
383](https://medium.com/writing-for-profit-with-ai/you-can-make-money-with-ai-without-quitting-your-job-5296bbcb703b?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[![The Startup](https://miro.medium.com/v2/resize:fill:20:20/1*pKOfOAOvx-fWzfITATgGRg.jpeg)](https://medium.com/swlh?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

In

[The Startup](https://medium.com/swlh?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

by

[Jano le Roux](https://medium.com/@janoleroux?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[**How This 17-Year-Old Quietly Built a $1.12M/Month AI App**\\
\\
**I stumbled upon his exact strategy from A to Z and it's brilliant.**](https://medium.com/swlh/how-this-17-year-old-quietly-built-a-1-12m-month-ai-app-970dd0637fe8?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

Dec 2, 2024

[7K\\
\\
193](https://medium.com/swlh/how-this-17-year-old-quietly-built-a-1-12m-month-ai-app-970dd0637fe8?source=post_page---read_next_recirc--35b44d8bad5c----0---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[![ILLUMINATION](https://miro.medium.com/v2/resize:fill:20:20/1*AZxiin1Cvws3J0TwNUP2sQ.png)](https://medium.com/illumination?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

In

[ILLUMINATION](https://medium.com/illumination?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

by

[Dr. Nikita Singh](https://medium.com/@nikkihere?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[**After Age 40, You Need to Stop Doing These Morning Habits — That Speed Up Aging**\\
\\
**Your Morning Routine Making You Age Faster?**](https://medium.com/illumination/after-age-40-you-need-to-stop-doing-these-morning-habits-that-speed-up-aging-1c0259e2cac1?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

Apr 21

[5.1K\\
\\
96](https://medium.com/illumination/after-age-40-you-need-to-stop-doing-these-morning-habits-that-speed-up-aging-1c0259e2cac1?source=post_page---read_next_recirc--35b44d8bad5c----1---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[![Daniel B. Gallagher](https://miro.medium.com/v2/resize:fill:20:20/1*Z06HflhKbMIQt-gQ4MoqJA.jpeg)](https://medium.com/@frdbg70?source=post_page---read_next_recirc--35b44d8bad5c----2---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[Daniel B. Gallagher](https://medium.com/@frdbg70?source=post_page---read_next_recirc--35b44d8bad5c----2---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[**I worked for Pope Francis. Here is what he was really like.**](https://medium.com/@frdbg70/i-worked-for-pope-francis-here-is-what-he-was-really-like-e6931c449e27?source=post_page---read_next_recirc--35b44d8bad5c----2---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

Apr 21

[14K\\
\\
273](https://medium.com/@frdbg70/i-worked-for-pope-francis-here-is-what-he-was-really-like-e6931c449e27?source=post_page---read_next_recirc--35b44d8bad5c----2---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[![Predict](https://miro.medium.com/v2/resize:fill:20:20/1*EetZyjDw-19wRRBzc6fSMA.png)](https://medium.com/predict?source=post_page---read_next_recirc--35b44d8bad5c----3---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

In

[Predict](https://medium.com/predict?source=post_page---read_next_recirc--35b44d8bad5c----3---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

by

[Will Lockett](https://medium.com/@wlockett?source=post_page---read_next_recirc--35b44d8bad5c----3---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[**Tesla Is Already Dead**\\
\\
**And Musk knows it.**](https://medium.com/predict/tesla-is-already-dead-967ee8912097?source=post_page---read_next_recirc--35b44d8bad5c----3---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

Apr 24

[6.2K\\
\\
167](https://medium.com/predict/tesla-is-already-dead-967ee8912097?source=post_page---read_next_recirc--35b44d8bad5c----3---------------------1a7bf654_7c48_4b93_8c16_147dd610cc63--------------)

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--35b44d8bad5c---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----35b44d8bad5c---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----35b44d8bad5c---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----35b44d8bad5c---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----35b44d8bad5c---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----35b44d8bad5c---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----35b44d8bad5c---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----35b44d8bad5c---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----35b44d8bad5c---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----35b44d8bad5c---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=w0_qmZVSdobukXrBwYd9dTF7&size=invisible&cb=erp5etf5oqre)