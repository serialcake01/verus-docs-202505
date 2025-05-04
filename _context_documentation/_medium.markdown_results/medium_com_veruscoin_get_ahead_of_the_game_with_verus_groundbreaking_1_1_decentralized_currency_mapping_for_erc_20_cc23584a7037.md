[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2Fcc23584a7037&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fget-ahead-of-the-game-with-verus-groundbreaking-1-1-decentralized-currency-mapping-for-erc-20-cc23584a7037&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fget-ahead-of-the-game-with-verus-groundbreaking-1-1-decentralized-currency-mapping-for-erc-20-cc23584a7037&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-cc23584a7037---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fget-ahead-of-the-game-with-verus-groundbreaking-1-1-decentralized-currency-mapping-for-erc-20-cc23584a7037&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-cc23584a7037---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-cc23584a7037---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fget-ahead-of-the-game-with-verus-groundbreaking-1-1-decentralized-currency-mapping-for-erc-20-cc23584a7037&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-cc23584a7037---------------------post_publication_sidebar------------------)

# Get Ahead of the Game with Verus’ Groundbreaking 1:1 Decentralized Currency Mapping for ERC-20 Tokens

## In this article, we show you how to map and bridge an Ethereum ERC-20 token to the Verus testnet blockchain as a currency one-to-one. We use the groundbreaking non-custodial and provable Verus-Ethereum bridge, and we don’t even need to code anything!

[![Max Theyse](https://miro.medium.com/v2/resize:fill:32:32/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---byline--cc23584a7037---------------------------------------)

[Max Theyse](https://medium.com/@meyse?source=post_page---byline--cc23584a7037---------------------------------------)

Follow

4 min read

·

Feb 9, 2023

176

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3Dcc23584a7037&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fget-ahead-of-the-game-with-verus-groundbreaking-1-1-decentralized-currency-mapping-for-erc-20-cc23584a7037&source=---header_actions--cc23584a7037---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*EYSL6whomrDqqoZdz-41Gg.png)

📝 _Note that this walkthrough is for the Verus Testnet blockchain, which simulates the Verus blockchain once the PBaaS-upgrade (Public Blockchains as a Service) is brought to mainnet. Also, the commands are for macOS and Linux, as Windows works a bit differently. We use the CLI wallet for Verus._ [**_Download here_**](https://github.com/VerusCoin/VerusCoin/releases/tag/v0.9.6-1) 🔗 _You can also use Verus Desktop with its incorporated terminal._

# The Verus-Ethereum Bridge

👉 **All tokens and currencies flowing over the bridge are never in anyone’s custody, and are proven and verified by consensus rules.**

The Verus-Ethereum bridge is the first of its kind. Because it is permissionless, non-custodial and provable. We can:

- send and receive ETH and ERC-20s to and from Verus and Ethereum
- send and receive currencies launched on Verus to and from Ethereum
- convert currencies through the bridge converter currency. Use on Ethereum as well as on Verus. [**Learn more on bridge converter currencies**](https://docs.verus.io/definecurrency/#bridge-converter-launches) 🔗

# Defining a Currency

Defining a currency on the Verus network is simple, just two commands are all you need. When the currency is successfully launched it can flow around within the protocol, and outside of the protocol (like an ERC-20, in our example). Let’s get started.

## VerusID Namespace

![](https://miro.medium.com/v2/resize:fit:700/1*MVT92deSZ5YHoEDF1G8LOA.png)

Before defining the currency, we already registered the VerusID `MaxUSDC@`. This cost us 100 VRSCTEST (or 80 when using a referral), which were distributed to the block producers. These costs can drastically vary depending on which PBaaS-chain you create a VerusID.

VerusID is the **namespace** for currencies and PBaaS-blockchains, among many other things. [**Learn more about VerusID**](https://docs.verus.io/verusid/) 🔗

## Defining the mapped currency

Defining a currency costs 200 VRSCTEST. These costs can change depending on which blockchain you want to define a currency. When launching PBaaS-chains you can define your own costs in the chains’ native currency. **Good to know**: these costs are going to the miners and stakers of the blockchain.

With a few simple commands we will:

- Define a currency mapped to the USDC Ethereum contract with a registered namespace (VerusID) on the Verus Testnet blockchain
- Export the currency to Ethereum through [**the non-custodial, provable bridge**](https://ethtest.verus.services/) 🔗

Before we can define the currency which is mapped to USDC on Ethereum, we must fund `MaxUSDC@` with enough VRSCTEST to launch the currency. And after that with enough vETH or VRSCTEST to pay for the gas fees that export the currency to Ethereum.

200+ VRSCTEST to launch the currency, and around 0.05 vETH or equivalent worth of VRSCTEST to export the currency to Ethereum.

Fund your VerusID with vETH in two ways:

1. Send ETH to Verus (into vETH) with [**the Verus-Ethereum bridge**](https://ethtest.verus.services/) 🔗
2. Convert VRSCTEST or any other currency into vETH using Verus’ protocol level DeFi [**more info on how to convert**](https://docs.verus.io/sendcurrency/sendcurrency-examples.html#converting) 🔗

The command that defines our currency `MaxUSDC`, which is mapped to the ERC-20 USDC (Goerli Testnet) [**contract address on Etherscan**](https://goerli.etherscan.io/token/0x98339D8C260052B7ad81c28c16C0b98420f2B46a?a=0xc2c3c5597e0ef59a92f04a70c8af9f8b8cb342e9) 🔗, is as follows:

```
./verus -chain=VRSCTEST definecurrency '{
 "name":"MaxUSDC",
 "options":32,
 "systemid":"veth",
 "parent":"vrsctest",
 "launchsystemid":"vrsctest",
 "nativecurrencyid":{
   "type":9,
   "address":"0x98339D8C260052B7ad81c28c16C0b98420f2B46a"
   },
 "initialsupply":0,
 "proofprotocol":3
}'
```

⭐ To learn more about the many different launch options when defining a currency on Verus, [**go here**](https://docs.verus.io/definecurrency/) 🔗 We encourage anyone to start testing the protocol to get ahead of the game. [**The community is happy to help on Discord**](http://www.verus.io/discord) 🔗

When we do the command above we get returned a HEX. Only after we make a transaction with the HEX, will the currency launch be broadcasted to the network. See below:

```
./verus -chain=VRSCTEST sendrawtransaction "hex"
```

Now you can see the currency on the Verus network. We just need to make sure it’s on Ethereum as well.

## Exporting the mapped currency

Now, let’s export the currency from Verus to Ethereum as an ERC-20 over the non-custodial bridge. We do this with the following command:

```
./verus chain=VRSCTEST sendcurrency "MaxUSDC@" '[{\
  "address":"0xAD84C9EE28FB4c3b9C6ef1B86D1ED00A82DB84E9",\
  "currency":"MaxUSDC",\
  "amount":0,\
  "exportto":"veth",\
  "exportcurrency":true,\
  "feecurrency":"veth"\
}]'
```

Note: the first `MaxUSDC@` field is the change address for fees being returned to you, and the `address` is the Verus-Ethereum non-custodial smart contract bridge address. You can also omit `feecurrency` if you would rather pay the export fees in VRSCTEST.

After the bridge has been notarized to the blockheight where you have exported the currency, you can choose it from the token dropdown [**on the bridge website**](https://ethtest.verus.services/) 🔗.

# ERC-20s on Verus

After sending from Ethereum to Verus, the token is free to move through the Internet of Value on the Verus network, across PBaaS-blockchains, and also back & forth with Ethereum.

As easily as the token was first defined and launched, it can now become one of the reserves in a multi-reserve liquidity basket AMM as part of Verus DeFi.

Anybody can define a multi-reserve currency which includes `MaxUSDC` as a reserve with weighted percentage (10–90%). The reserves grow as they retain a small fee whenever assets are traded in/out/through.

A multi-reserve currency itself can also be used as one of the reserves in another multi-reserve liquidity basket AMM token on Verus.

👀 Stay tuned for more on this later, or start reading [**docs.verus.io**](http://docs.verus.io/), or [**join the Discord to learn**](http://www.verus.io/discord).

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

[Blockchain Development](https://medium.com/tag/blockchain-development?source=post_page-----cc23584a7037---------------------------------------)

[Blockchain Technology](https://medium.com/tag/blockchain-technology?source=post_page-----cc23584a7037---------------------------------------)

[Ethereum](https://medium.com/tag/ethereum?source=post_page-----cc23584a7037---------------------------------------)

[Ethereum Blockchain](https://medium.com/tag/ethereum-blockchain?source=post_page-----cc23584a7037---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----cc23584a7037---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--cc23584a7037---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--cc23584a7037---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--cc23584a7037---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--cc23584a7037---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--cc23584a7037---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Max Theyse](https://miro.medium.com/v2/resize:fill:48:48/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---post_author_info--cc23584a7037---------------------------------------)

[![Max Theyse](https://miro.medium.com/v2/resize:fill:64:64/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---post_author_info--cc23584a7037---------------------------------------)

Follow

[**Written by Max Theyse**](https://medium.com/@meyse?source=post_page---post_author_info--cc23584a7037---------------------------------------)

[171 Followers](https://medium.com/@meyse/followers?source=post_page---post_author_info--cc23584a7037---------------------------------------)

· [6 Following](https://medium.com/@meyse/following?source=post_page---post_author_info--cc23584a7037---------------------------------------)

Follow

## No responses yet

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fget-ahead-of-the-game-with-verus-groundbreaking-1-1-decentralized-currency-mapping-for-erc-20-cc23584a7037&source=---post_responses--cc23584a7037---------------------respond_sidebar------------------)

Cancel

Respond

## More from Max Theyse and Verus Coin

![Verus: Profit Generating Protocol for Miners and Stakers](https://miro.medium.com/v2/resize:fit:679/1*mM9OwDNz-t2F5ZA2N1o1Jw.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--cc23584a7037----0---------------------f7904142_0170_47fe_987f_320d8921a926--------------)

In

by

May 11, 2021

[311](https://medium.com/veruscoin/verus-profit-generating-protocol-for-miners-and-stakers-2d2b454aa330?source=post_page---author_recirc--cc23584a7037----0---------------------f7904142_0170_47fe_987f_320d8921a926--------------)

![How to Start CPU Mining Verus Coin VRSC from Your Computer  in Under 5 Minutes](https://miro.medium.com/v2/resize:fit:679/1*hPK9_NibFVInWPsgIIxvzg.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--cc23584a7037----1---------------------f7904142_0170_47fe_987f_320d8921a926--------------)

In

by

Jan 9, 2019

[332\\
\\
1](https://medium.com/veruscoin/how-to-start-cpu-mining-verus-coin-vrsc-from-your-laptop-in-under-5-minutes-f69c9aae340e?source=post_page---author_recirc--cc23584a7037----1---------------------f7904142_0170_47fe_987f_320d8921a926--------------)

![Verus Beginner’s Staking Guide](https://miro.medium.com/v2/resize:fit:679/1*GHpZSHyuVza6Bnu5O1rN2Q.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--cc23584a7037----2---------------------f7904142_0170_47fe_987f_320d8921a926--------------)

In

by

Mar 8, 2021

[238](https://medium.com/veruscoin/verus-beginners-staking-guide-efbbdc4de951?source=post_page---author_recirc--cc23584a7037----2---------------------f7904142_0170_47fe_987f_320d8921a926--------------)

![How-to Participate in the Verus-Ethereum Bridge Launch](https://miro.medium.com/v2/resize:fit:679/1*aqnqO2cA4GCdZ6h3dZ5ABA.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--cc23584a7037----3---------------------f7904142_0170_47fe_987f_320d8921a926--------------)

In

by

Oct 11, 2023

[146](https://medium.com/veruscoin/how-to-participate-in-the-verus-ethereum-bridge-launch-73aeeae1c76a?source=post_page---author_recirc--cc23584a7037----3---------------------f7904142_0170_47fe_987f_320d8921a926--------------)

[See all from Max Theyse](https://medium.com/@meyse?source=post_page---author_recirc--cc23584a7037---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--cc23584a7037---------------------------------------)

## Recommended from Medium

![This new IDE from Google is an absolute game changer](https://miro.medium.com/v2/resize:fit:679/1*f-1HQQng85tbA7kwgECqoQ.png)

[![Coding Beauty](https://miro.medium.com/v2/resize:fill:20:20/1*ViyWUoh4zqx294no1eENxw.png)](https://medium.com/coding-beauty?source=post_page---read_next_recirc--cc23584a7037----0---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

In

by

Mar 11

[5K\\
\\
294](https://medium.com/coding-beauty/new-google-project-idx-fae1fdd079c7?source=post_page---read_next_recirc--cc23584a7037----0---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

![You Can Make Money With AI Without Quitting Your Job](https://miro.medium.com/v2/resize:fit:679/1*kronPqvBjIJFWp2ANVlpwA.jpeg)

[![Learn AI for Profit](https://miro.medium.com/v2/resize:fill:20:20/1*MDbgiQN0r_f0k9x45YcB7g.png)](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--cc23584a7037----1---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

In

by

Mar 24

[8.2K\\
\\
383](https://medium.com/writing-for-profit-with-ai/you-can-make-money-with-ai-without-quitting-your-job-5296bbcb703b?source=post_page---read_next_recirc--cc23584a7037----1---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

![How I Made $3k in a Week with a Custom TypeScript Crypto Bot](https://miro.medium.com/v2/resize:fit:679/0*lMrcZONPu0gRVdJZ)

[![Block Magnates](https://miro.medium.com/v2/resize:fill:20:20/1*_DO7SflM7OJTc25NWdZoiA.png)](https://medium.com/block-magnates?source=post_page---read_next_recirc--cc23584a7037----0---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

In

by

Nov 11, 2024

[134\\
\\
4](https://medium.com/block-magnates/how-i-made-3k-in-a-week-with-a-custom-typescript-crypto-bot-15068fccf6f6?source=post_page---read_next_recirc--cc23584a7037----0---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

![An abstract illustration of a vast, dreamy desert landscape under a starry night sky. A small figure sits by a campfire, dwarfed by the large silhouette of a serene face blending into the sand dunes, creating a surreal and contemplative atmosphere.](https://miro.medium.com/v2/resize:fit:679/0*hIyZn7taxr6gJqmC.jpg)

[![The Startup](https://miro.medium.com/v2/resize:fill:20:20/1*pKOfOAOvx-fWzfITATgGRg.jpeg)](https://medium.com/swlh?source=post_page---read_next_recirc--cc23584a7037----1---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

In

by

Dec 2, 2024

[7K\\
\\
193](https://medium.com/swlh/how-this-17-year-old-quietly-built-a-1-12m-month-ai-app-970dd0637fe8?source=post_page---read_next_recirc--cc23584a7037----1---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

![Create Your Own Crypto Token](https://miro.medium.com/v2/resize:fit:679/0*BGPU7JO7_MaOaq4Y)

[![AI Advances](https://miro.medium.com/v2/resize:fill:20:20/1*R8zEd59FDf0l8Re94ImV0Q.png)](https://medium.com/ai-advances?source=post_page---read_next_recirc--cc23584a7037----2---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

In

by

Nov 27, 2024

[1.3K\\
\\
61](https://medium.com/ai-advances/create-your-own-crypto-token-1cfd7c274eeb?source=post_page---read_next_recirc--cc23584a7037----2---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

![The 1-Minute Introduction That Makes People Remember You Forever](https://miro.medium.com/v2/resize:fit:679/0*Xb8i76SZjoCN3Akn)

[![Psyc Digest](https://miro.medium.com/v2/resize:fill:20:20/1*ntjPWdk0lRb9FiP_zNZqLQ.jpeg)](https://medium.com/social-science-weekly?source=post_page---read_next_recirc--cc23584a7037----3---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

In

by

Apr 12

[22K\\
\\
514](https://medium.com/social-science-weekly/the-1-minute-introduction-that-makes-people-remember-you-forever-497cefcfdccc?source=post_page---read_next_recirc--cc23584a7037----3---------------------e2034fac_c7b9_4587_ac3a_6e0ab19f5b60--------------)

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--cc23584a7037---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----cc23584a7037---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----cc23584a7037---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----cc23584a7037---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----cc23584a7037---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----cc23584a7037---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----cc23584a7037---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----cc23584a7037---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----cc23584a7037---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----cc23584a7037---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=w0_qmZVSdobukXrBwYd9dTF7&size=invisible&cb=3r4mda2t4zjo)