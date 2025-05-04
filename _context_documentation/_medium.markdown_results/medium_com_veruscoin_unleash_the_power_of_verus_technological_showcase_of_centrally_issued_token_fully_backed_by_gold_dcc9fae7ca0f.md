[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2Fdcc9fae7ca0f&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Funleash-the-power-of-verus-technological-showcase-of-centrally-issued-token-fully-backed-by-gold-dcc9fae7ca0f&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Funleash-the-power-of-verus-technological-showcase-of-centrally-issued-token-fully-backed-by-gold-dcc9fae7ca0f&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-dcc9fae7ca0f---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Funleash-the-power-of-verus-technological-showcase-of-centrally-issued-token-fully-backed-by-gold-dcc9fae7ca0f&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-dcc9fae7ca0f---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-dcc9fae7ca0f---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Funleash-the-power-of-verus-technological-showcase-of-centrally-issued-token-fully-backed-by-gold-dcc9fae7ca0f&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-dcc9fae7ca0f---------------------post_publication_sidebar------------------)

# Unleash the Power of Verus — Technological Showcase of Centrally-Issued Token Fully Backed by Gold

## In this article, we showcase how to launch a centrally controlled token with minting and burning capabilities, fully backed by gold. We use the innovative Verus blockchain technology with its versatile currency launches, which can be used both for centralized and decentralized projects. And we don’t even need to code anything!

[![Max Theyse](https://miro.medium.com/v2/resize:fill:32:32/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---byline--dcc9fae7ca0f---------------------------------------)

[Max Theyse](https://medium.com/@meyse?source=post_page---byline--dcc9fae7ca0f---------------------------------------)

Follow

5 min read

·

Feb 18, 2023

354

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3Ddcc9fae7ca0f&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Funleash-the-power-of-verus-technological-showcase-of-centrally-issued-token-fully-backed-by-gold-dcc9fae7ca0f&source=---header_actions--dcc9fae7ca0f---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*12yZD7s8urMTe9gdvE4PQQ.png)

_📝 Note that this walkthrough is for the Verus Testnet blockchain, which already has the functionalities that the PBaaS-upgrade (Public Blockchains as a Service) will bring to mainnet. Also, the commands are for macOS and Linux, as Windows works a bit differently. We use the CLI wallet for Verus._ [**_Download here_**](https://github.com/VerusCoin/VerusCoin/releases/tag/v0.9.6-1) _🔗 You can also use Verus Desktop with its incorporated terminal._

# Fictional Company “Very Good Gold”

In this technological showcase, we have a fictional company that is an issuer of a centralized token with 1:1 backing of gold. With a starting supply of 0. The issuer of this token has full control of minting and burning capabilities.

The mint and burn process however needs to be approved by two signers, making sure one entity doesn’t have full control. For this example we use a 2 of 2 signature setup. Any signature setup is possible (with a maximum of 13 of 25), depending on different use cases.

# Defining a Currency

Defining a currency on the Verus network is simple, just two commands. When the currency is successfully launched it can flow around within the protocol, and outside of the protocol ( [**learn how to export a currency as an ERC-20 to Ethereum**](https://medium.com/veruscoin/get-ahead-of-the-game-with-verus-groundbreaking-1-1-decentralized-currency-mapping-for-erc-20-cc23584a7037) 🔗). Let’s get started.

## VerusID Namespace

![](https://miro.medium.com/v2/resize:fit:700/1*MVT92deSZ5YHoEDF1G8LOA.png)

Before defining the currency, we already registered the VerusID `VGG@`. This cost us 100 VRSCTEST (or 80 when using a referral), which were distributed to the block producers. These costs can drastically vary depending on which PBaaS-blockchain we create a VerusID.

VerusID is the namespace for currencies and PBaaS-blockchains, among many other things. [**Learn more about VerusID**](https://docs.verus.io/verusid/) 🔗

We also said to have a 2 of 2 signature setup. This means the identity is controlled by two primary addresses, with always two signatures needed to do any action (like launching the currency, minting, burning and sending).

## Defining the currency

Defining a currency costs 200 VRSCTEST. These costs can change depending on which blockchain you want to define a currency on. When launching PBaaS-chains you can define your own costs in the chains’ native currency. **Good to know**: these costs are going to the miners and stakers of the blockchain.

With a few simple commands, we will:

- Define the currency
- Have it signed by a second signature
- Launch the currency

Before starting we must fund VGG@ with 200+ VRSCTEST to launch the currency. The chain definition is as follows:

```
./verus -chain=VRSCTEST definecurrency '{
  "name":"VGG",
  "options":32,
  "proofprotocol":2
}'
```

It’s a simple chain definition, with only `“options”:32` (= the currency is just a token), and `“proofprotocol”:2` (= the controller of the VerusID where the currency is launched from can mint and burn tokens at will).

These are some options and specifications that are possible when launching a currency: as a simple token, as fractional reserve currency or multi-reserve basket, start & end block, min. & max. preconversions, initial contributions, pre-launch discount & carveout, initial supply and much more.

⭐ To learn more about the many different launch options when defining a currency on Verus, [**go here**](https://docs.verus.io/definecurrency/) 🔗 We encourage anyone to start testing the protocol to get ahead of the game. [**The community is happy to help on Discord**](http://www.verus.io/discord) **🔗**

## Approving and launching the currency

Now, the second signer needs to come in and sign off on the currency definition, and launch the currency.

The command from before gives out a HEX. The second signer needs to sign this HEX as follows:

```
./verus -chain=VRSCTEST signrawtransaction "hex"
```

This gives out another HEX. We use it to submit the transaction to the chain, which in turn launches the currency.

```
./verus -chain=VRSCTEST sendrawtransaction "hex"
```

After doing the command above, it takes around 15 blocks before the currency is officially launched on the network.

Next step is the minting and burning of tokens, according to how much gold the company has in custody.

## Minting and burning

Say a customer put 10,000 ounces of gold into the custody of the company. Now let’s make sure the customer gets that amount of VGG into their wallet.

We mint 10,000 VGG with this simple command:

```
./verus -chain=VRSCTEST sendcurrency "VGG@" '[{\
  "address":"Customer1@",\
  "currency":"VGG",\
  "mintnew":1,\
  "amount":10000\
}]'
```

VGG@ is the change-address, Customer1@ is the address where the 10,000 VGG are minted to.

The second signer needs to do `signrawtransaction` and `sendrawtransaction`, as we have done before, to actually mint the tokens into Customer1@.

Now, if someone wants to redeem their VGG for gold again, we need to be able to burn that amount from the supply of VGG. We burn with the following command:

```
./verus -chain=VRSCTEST sendcurrency "VGG@" '[{\
  "address":"VGG@",\
  "currency": "VGG",\
  "amount": 5000,\
  "burn":true\
}]'
```

To make it happen, the second signer needs to sign off on it again.

If we want to check to see the supply of the currency, we can do the following command:

```
./verus -chain=VRSCTEST getcurrency “vgg”
```

# Use VGG in Many Ways

This article showcased a simple example of how a business can function using the Verus protocol. What we can do with the network goes far beyond what is possible using current blockchain protocols. And all of that without any programming needed!

We can also easily export the VGG token to Ethereum as an ERC-20. It can also become one of the reserves in a multi-reserve liquidity basket AMM (automated market maker) as part of Verus DeFi.

Anybody can define a multi-reserve currency which includes VGG as a reserve with weighted percentage (10–90%). The reserves grow as they retain a small fee whenever assets are traded in/out/through.

A multi-reserve currency itself can also be used as one of the reserves in another multi-reserve liquidity basket AMM token on Verus.

👀 Stay tuned for more examples, or start reading [**docs.verus.io**](http://docs.verus.io/), or [**join the Discord to learn**](http://www.verus.io/discord).

**🫡 Credits for the article go to community member ‘ejuliano’.**

➡️ [**Explore with the community on Discord**](http://www.verus.io/discord)

[**Follow on Twitter**](https://twitter.com/VerusCoin)

[**Go to verus.io**](http://www.verus.io/)

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

[Blockchain Development](https://medium.com/tag/blockchain-development?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Blockchain Technology](https://medium.com/tag/blockchain-technology?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Innovation](https://medium.com/tag/innovation?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Cryptocurrency News](https://medium.com/tag/cryptocurrency-news?source=post_page-----dcc9fae7ca0f---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--dcc9fae7ca0f---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--dcc9fae7ca0f---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--dcc9fae7ca0f---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--dcc9fae7ca0f---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--dcc9fae7ca0f---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Max Theyse](https://miro.medium.com/v2/resize:fill:48:48/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---post_author_info--dcc9fae7ca0f---------------------------------------)

[![Max Theyse](https://miro.medium.com/v2/resize:fill:64:64/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---post_author_info--dcc9fae7ca0f---------------------------------------)

Follow

[**Written by Max Theyse**](https://medium.com/@meyse?source=post_page---post_author_info--dcc9fae7ca0f---------------------------------------)

[171 Followers](https://medium.com/@meyse/followers?source=post_page---post_author_info--dcc9fae7ca0f---------------------------------------)

· [6 Following](https://medium.com/@meyse/following?source=post_page---post_author_info--dcc9fae7ca0f---------------------------------------)

Follow

## No responses yet

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Funleash-the-power-of-verus-technological-showcase-of-centrally-issued-token-fully-backed-by-gold-dcc9fae7ca0f&source=---post_responses--dcc9fae7ca0f---------------------respond_sidebar------------------)

Cancel

Respond

## More from Max Theyse and Verus Coin

![Verus: Profit Generating Protocol for Miners and Stakers](https://miro.medium.com/v2/resize:fit:679/1*mM9OwDNz-t2F5ZA2N1o1Jw.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--dcc9fae7ca0f----0---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

In

by

[**Verus: Profit Generating Protocol for Miners and Stakers**\\
\\
**Future and present Verus miners: take notice. Be ready to maximize profit with your hardware. Mine up to 22 blockchains with the same…**](https://medium.com/veruscoin/verus-profit-generating-protocol-for-miners-and-stakers-2d2b454aa330?source=post_page---author_recirc--dcc9fae7ca0f----0---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

May 11, 2021

[311](https://medium.com/veruscoin/verus-profit-generating-protocol-for-miners-and-stakers-2d2b454aa330?source=post_page---author_recirc--dcc9fae7ca0f----0---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

![How to Start CPU Mining Verus Coin VRSC from Your Computer  in Under 5 Minutes](https://miro.medium.com/v2/resize:fit:679/1*hPK9_NibFVInWPsgIIxvzg.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--dcc9fae7ca0f----1---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

In

by

[**How to Start CPU Mining Verus Coin VRSC from Your Computer in Under 5 Minutes**\\
\\
**A Dummies Step by Step Guide to Pool Mining Verus Coin with a CPU!**](https://medium.com/veruscoin/how-to-start-cpu-mining-verus-coin-vrsc-from-your-laptop-in-under-5-minutes-f69c9aae340e?source=post_page---author_recirc--dcc9fae7ca0f----1---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

Jan 9, 2019

[332\\
\\
1](https://medium.com/veruscoin/how-to-start-cpu-mining-verus-coin-vrsc-from-your-laptop-in-under-5-minutes-f69c9aae340e?source=post_page---author_recirc--dcc9fae7ca0f----1---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

![Verus Beginner’s Staking Guide](https://miro.medium.com/v2/resize:fit:679/1*GHpZSHyuVza6Bnu5O1rN2Q.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--dcc9fae7ca0f----2---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

In

by

[**Verus Beginner’s Staking Guide**\\
\\
**Introduction to staking and earning rewards on Verus (VRSC)**](https://medium.com/veruscoin/verus-beginners-staking-guide-efbbdc4de951?source=post_page---author_recirc--dcc9fae7ca0f----2---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

Mar 8, 2021

[238](https://medium.com/veruscoin/verus-beginners-staking-guide-efbbdc4de951?source=post_page---author_recirc--dcc9fae7ca0f----2---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

![How-to Participate in the Verus-Ethereum Bridge Launch](https://miro.medium.com/v2/resize:fit:679/1*aqnqO2cA4GCdZ6h3dZ5ABA.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--dcc9fae7ca0f----3---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

In

by

[**How-to Participate in the Verus-Ethereum Bridge Launch**\\
\\
**Instructions on how to use the Verus-Ethereum Bridge website and Verus Desktop to preconvert ETH, DAI and MKR into Bridge.vETH**](https://medium.com/veruscoin/how-to-participate-in-the-verus-ethereum-bridge-launch-73aeeae1c76a?source=post_page---author_recirc--dcc9fae7ca0f----3---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

Oct 11, 2023

[146](https://medium.com/veruscoin/how-to-participate-in-the-verus-ethereum-bridge-launch-73aeeae1c76a?source=post_page---author_recirc--dcc9fae7ca0f----3---------------------f7a5be0e_2ed1_4e85_ba46_ba9c96acc09c--------------)

[See all from Max Theyse](https://medium.com/@meyse?source=post_page---author_recirc--dcc9fae7ca0f---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--dcc9fae7ca0f---------------------------------------)

## Recommended from Medium

![This new IDE from Google is an absolute game changer](https://miro.medium.com/v2/resize:fit:679/1*f-1HQQng85tbA7kwgECqoQ.png)

[![Coding Beauty](https://miro.medium.com/v2/resize:fill:20:20/1*ViyWUoh4zqx294no1eENxw.png)](https://medium.com/coding-beauty?source=post_page---read_next_recirc--dcc9fae7ca0f----0---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

In

by

[**This new IDE from Google is an absolute game changer**\\
\\
**This new IDE from Google is seriously revolutionary.**](https://medium.com/coding-beauty/new-google-project-idx-fae1fdd079c7?source=post_page---read_next_recirc--dcc9fae7ca0f----0---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

Mar 11

[5K\\
\\
294](https://medium.com/coding-beauty/new-google-project-idx-fae1fdd079c7?source=post_page---read_next_recirc--dcc9fae7ca0f----0---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

![You Can Make Money With AI Without Quitting Your Job](https://miro.medium.com/v2/resize:fit:679/1*kronPqvBjIJFWp2ANVlpwA.jpeg)

[![Learn AI for Profit](https://miro.medium.com/v2/resize:fill:20:20/1*MDbgiQN0r_f0k9x45YcB7g.png)](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--dcc9fae7ca0f----1---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

In

by

[**You Can Make Money With AI Without Quitting Your Job**\\
\\
**I’m doing it, 2 hours a day**](https://medium.com/writing-for-profit-with-ai/you-can-make-money-with-ai-without-quitting-your-job-5296bbcb703b?source=post_page---read_next_recirc--dcc9fae7ca0f----1---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

Mar 24

[8.2K\\
\\
383](https://medium.com/writing-for-profit-with-ai/you-can-make-money-with-ai-without-quitting-your-job-5296bbcb703b?source=post_page---read_next_recirc--dcc9fae7ca0f----1---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

![An abstract illustration of a vast, dreamy desert landscape under a starry night sky. A small figure sits by a campfire, dwarfed by the large silhouette of a serene face blending into the sand dunes, creating a surreal and contemplative atmosphere.](https://miro.medium.com/v2/resize:fit:679/0*hIyZn7taxr6gJqmC.jpg)

[![The Startup](https://miro.medium.com/v2/resize:fill:20:20/1*pKOfOAOvx-fWzfITATgGRg.jpeg)](https://medium.com/swlh?source=post_page---read_next_recirc--dcc9fae7ca0f----0---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

In

by

[**How This 17-Year-Old Quietly Built a $1.12M/Month AI App**\\
\\
**I stumbled upon his exact strategy from A to Z and it's brilliant.**](https://medium.com/swlh/how-this-17-year-old-quietly-built-a-1-12m-month-ai-app-970dd0637fe8?source=post_page---read_next_recirc--dcc9fae7ca0f----0---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

Dec 2, 2024

[7K\\
\\
193](https://medium.com/swlh/how-this-17-year-old-quietly-built-a-1-12m-month-ai-app-970dd0637fe8?source=post_page---read_next_recirc--dcc9fae7ca0f----0---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

![How I Made $3k in a Week with a Custom TypeScript Crypto Bot](https://miro.medium.com/v2/resize:fit:679/0*lMrcZONPu0gRVdJZ)

[![Block Magnates](https://miro.medium.com/v2/resize:fill:20:20/1*_DO7SflM7OJTc25NWdZoiA.png)](https://medium.com/block-magnates?source=post_page---read_next_recirc--dcc9fae7ca0f----1---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

In

by

[**How I Made $3k in a Week with a Custom TypeScript Crypto Bot**\\
\\
**I’ve always been fascinated by the crypto ecosystem, After months of learning and testing, I made this profitable bot.**](https://medium.com/block-magnates/how-i-made-3k-in-a-week-with-a-custom-typescript-crypto-bot-15068fccf6f6?source=post_page---read_next_recirc--dcc9fae7ca0f----1---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

Nov 11, 2024

[134\\
\\
4](https://medium.com/block-magnates/how-i-made-3k-in-a-week-with-a-custom-typescript-crypto-bot-15068fccf6f6?source=post_page---read_next_recirc--dcc9fae7ca0f----1---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

![The 5 paid subscriptions I actually use in 2025 as a Staff Software Engineer](https://miro.medium.com/v2/resize:fit:679/1*3XS-8r8adjnRoNH4YjKXpw.png)

[![Level Up Coding](https://miro.medium.com/v2/resize:fill:20:20/1*5D9oYBd58pyjMkV_5-zXXQ.jpeg)](https://medium.com/gitconnected?source=post_page---read_next_recirc--dcc9fae7ca0f----2---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

In

by

[**The 5 paid subscriptions I actually use in 2025 as a Staff Software Engineer**\\
\\
**Tools I use that are cheaper than Netflix**](https://medium.com/gitconnected/the-5-paid-subscriptions-i-actually-use-in-2025-as-a-staff-software-engineer-98033c94566e?source=post_page---read_next_recirc--dcc9fae7ca0f----2---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

Jan 7

[12.8K\\
\\
318](https://medium.com/gitconnected/the-5-paid-subscriptions-i-actually-use-in-2025-as-a-staff-software-engineer-98033c94566e?source=post_page---read_next_recirc--dcc9fae7ca0f----2---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

![Free Crypto Mining: How to Get Started Today](https://miro.medium.com/v2/resize:fit:679/1*oYfhg1wVZhUZTAbIgPnh4w.png)

[![Trade Aria](https://miro.medium.com/v2/resize:fill:20:20/1*ZOIW-f0Mf9OxnkLMTtQzuQ.png)](https://medium.com/@tradeariaa?source=post_page---read_next_recirc--dcc9fae7ca0f----3---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

[**Free Crypto Mining: How to Get Started Today**\\
\\
**Cryptocurrency mining is a popular way to earn digital currency. But, the cost of hardware and electricity can be high.**](https://medium.com/@tradeariaa/free-crypto-mining-how-to-get-started-today-315435ad0dac?source=post_page---read_next_recirc--dcc9fae7ca0f----3---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

Nov 19, 2024

[310\\
\\
32](https://medium.com/@tradeariaa/free-crypto-mining-how-to-get-started-today-315435ad0dac?source=post_page---read_next_recirc--dcc9fae7ca0f----3---------------------79fc3c30_71b2_451e_8188_acc933778c57--------------)

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--dcc9fae7ca0f---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----dcc9fae7ca0f---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----dcc9fae7ca0f---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----dcc9fae7ca0f---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----dcc9fae7ca0f---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=w0_qmZVSdobukXrBwYd9dTF7&size=invisible&cb=pp707qeoomgr)