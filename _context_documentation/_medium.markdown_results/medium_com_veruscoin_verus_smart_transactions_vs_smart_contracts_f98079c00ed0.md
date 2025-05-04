[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2Ff98079c00ed0&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-smart-transactions-vs-smart-contracts-f98079c00ed0&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-smart-transactions-vs-smart-contracts-f98079c00ed0&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-f98079c00ed0---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-smart-transactions-vs-smart-contracts-f98079c00ed0&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-f98079c00ed0---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-f98079c00ed0---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-smart-transactions-vs-smart-contracts-f98079c00ed0&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-f98079c00ed0---------------------post_publication_sidebar------------------)

# Verus Smart Transactions vs. Smart Contracts

## Verus Protocol lead developer Mike Toutonghi explains the differences between Verus smart transactions and smart contracts.

[![Max Theyse](https://miro.medium.com/v2/resize:fill:32:32/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---byline--f98079c00ed0---------------------------------------)

[Max Theyse](https://medium.com/@meyse?source=post_page---byline--f98079c00ed0---------------------------------------)

Follow

5 min read

·

Jul 24, 2023

171

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3Df98079c00ed0&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-smart-transactions-vs-smart-contracts-f98079c00ed0&source=---header_actions--f98079c00ed0---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*9v4SuLaDwSEm3wiRt7qUXA.png)

**_The following was written by Mike Toutonghi, lead developer on the Verus Protocol, on_** [**_Discord_**](http://www.verus.io/discord) 👇

# Application Programming Model

The way to understand smart transactions vs. smart contracts is to think about the application programming model, and how each of them work in context.

There is no 1:1 correlation, but smart transactions are much easier to use in practice to achieve most capabilities, if not all, in a decentralized fashion.

## Smart Contracts

Basically, the current model on Ethereum is:

1. You run on a blockchain where the only currency where accounting is enforced by the blockchain protocol is ETH. To launch, or materialize a token, an account abstraction, or any other form of currency or identity-like structure (NFTs, liquidity pools, etc), you write an executable program/contract, according to accepted conventions, but with no actual checks that you follow any form of math accuracy, interface adherence, or accounting rules whatsoever.
2. The differentiation of these contracts, which are akin to stored procedures in a database, but carry with them the DB schema as well as the interface, is in the way they enable differences of implementation of those accepted conventions.
3. Consensus across all of Ethereum is applied to ensuring that the shared, serialized, worldwide computer that is the EVM executes its low level instructions accurately, with no accounting of currencies, exchanges, enablement of efficient, actual IDs, zk-privacy, etc. The currencies that run above the single native security currency, run by arbitrary rules, often opaque or containing unexpected behaviors, and everyone must create their version of these contracts to build a dApp.

## Verus Smart Transactions

In Verus, it’s a new model as follows:

1. Your dApp can run on a client or on a broad range of resource types, and it communicates via the same RPC API as the CLI commands (optionally without wallet or control functions) with a fully functional, decentralized backend, which is the Internet of Value, including all its unlimited scale, connected systems and chains.
2. Unlike a single currency blockchain, Verus smart transactions natively support an unlimited number of friendly name currencies directly via protocol and an unlimited number of blockchains for currency launches, simple sends, currency conversions, or cross-chain operations. All inputs, outputs, cross-chain imports, and even conversions are validated and in/out values of all currencies accounted for by consensus, just as native currency ins and outs are on single-currency blockchains.
3. Identities are a first class concept in the primitives available for dApps. They all support fully available, open, decentralized, user controlled authentication and authorization protocols, enabled by QR code or deep links and supportive of permission granting, ID provisioning/sale by the dApp, private/attested KYC and other services. These protocols can easily be bridged to OAuth or OpenID Connect via servers like Hydra, but used natively, they require no service provider between the service actually authenticating the user and the user themselves.
4. Every identity is multisig and has revocation and recovery capabilities. They are also transferable and can have rights bound into them in a provable manner via the contentmultimap. All of this is supported as primitives in the core RPC/CLI api/command line and in the core protocol.
5. IDs enable their holders to launch like-named currencies, blockchains, and single NFT-like tokens that have a super power over the ID, which is very useful for an ID that may live across multiple chains.
6. IDs and currencies may be created and launched on one chain, leveraging all of that chains capabilities (Verus includes many variations in currency, including conditional crowdfunding, liquidity pools, blockchains, etc.), and exported to other chains to be used everywhere across the network. For example, if you launch a currency on Verus or any PBaaS chain, including the native PBaaS chain’s currency. All of those currency definitions can be exported to Ethereum, and they will emerge on Ethereum as an automatically created and functional ERC20 contract, enabling the currency to be sent back and forth via protocol from then on.
7. All identities and currencies are resolvable worldwide, meaning that you can determine a network path to the nodes of the blockchain where they were defined via their friendly name, or usually via their i-address, if they have been exported cross-chain. This enables apps to scale over any number of decentralized blockchains worldwide and leave the management of user databases and user data, as well as settings, signals, endpoints, etc. to the users themselves and the client apps they use to help them manage.
8. Because the currency and liquidity pool support is in the L1 protocol, we have been able to actually solve for and provide MEV-resistant (both intra and inter-block) AMMs as a primitive, available to all applications and users.

People don’t have to write basic liquidity and conversion protocols, which are just primitives, not apps. Real apps can use all of these primitives to deliver the next level of function. Payments, currency conversions, earning systems, polls, voting, multi-chain world scale social networks using provable streams in provable IDs, crowdfunding, independent economies. All primitives, such as IDs, currencies, blockchains, and liquidity baskets have very rich capabilities from launch to continued operation.

# Extending Verus Smart Transactions

If someone wants to extend smart transactions, that is an option, but they either don’t have to, or if they really have a reason to do so, they can do it on their PBaaS chain, share or not share back (lots of reasons to do so), and now that we have the core primitive framework as a foundation, we can certainly collaborate on a kind of protocol extension that is likely to include forms of VM and/or ZKVM extension points in the current protocol, to work within the framework of the core primitives that are fundamental to Verus and that we believe are crucial for safe financial infrastructure, yet generally missing in other systems.

# Try Yourself! ✅

Look up [**docs.verus.io**](http://docs.verus.io/) to use many API commands (e.g. [**launching currencies, tokens & liquidity pools**](https://docs.verus.io/currencies/launch-currency.html)).

Or look up the [**complete command list here**](https://wiki.verus.io/#!faq-cli/clifaq-02_verus_commands.md).

# Join the community. Learn about the protocol. Use Verus & build.

➡️ [**Join the community on Discord**](http://www.verus.io/discord)

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

[Blockchain Technology](https://medium.com/tag/blockchain-technology?source=post_page-----f98079c00ed0---------------------------------------)

[Blockchain Development](https://medium.com/tag/blockchain-development?source=post_page-----f98079c00ed0---------------------------------------)

[Cryptocurrency News](https://medium.com/tag/cryptocurrency-news?source=post_page-----f98079c00ed0---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----f98079c00ed0---------------------------------------)

[Blockchain](https://medium.com/tag/blockchain?source=post_page-----f98079c00ed0---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--f98079c00ed0---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--f98079c00ed0---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--f98079c00ed0---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--f98079c00ed0---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--f98079c00ed0---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Max Theyse](https://miro.medium.com/v2/resize:fill:48:48/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---post_author_info--f98079c00ed0---------------------------------------)

[![Max Theyse](https://miro.medium.com/v2/resize:fill:64:64/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---post_author_info--f98079c00ed0---------------------------------------)

Follow

[**Written by Max Theyse**](https://medium.com/@meyse?source=post_page---post_author_info--f98079c00ed0---------------------------------------)

[171 Followers](https://medium.com/@meyse/followers?source=post_page---post_author_info--f98079c00ed0---------------------------------------)

· [6 Following](https://medium.com/@meyse/following?source=post_page---post_author_info--f98079c00ed0---------------------------------------)

Follow

## No responses yet

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fverus-smart-transactions-vs-smart-contracts-f98079c00ed0&source=---post_responses--f98079c00ed0---------------------respond_sidebar------------------)

Cancel

Respond

## More from Max Theyse and Verus Coin

![Verus: Profit Generating Protocol for Miners and Stakers](https://miro.medium.com/v2/resize:fit:679/1*mM9OwDNz-t2F5ZA2N1o1Jw.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0----0---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0----0---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

by

[Max Theyse](https://medium.com/@meyse?source=post_page---author_recirc--f98079c00ed0----0---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

May 11, 2021

[311](https://medium.com/veruscoin/verus-profit-generating-protocol-for-miners-and-stakers-2d2b454aa330?source=post_page---author_recirc--f98079c00ed0----0---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

![How to Start CPU Mining Verus Coin VRSC from Your Computer  in Under 5 Minutes](https://miro.medium.com/v2/resize:fit:679/1*hPK9_NibFVInWPsgIIxvzg.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0----1---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0----1---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

by

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--f98079c00ed0----1---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

Jan 9, 2019

[332\\
\\
1](https://medium.com/veruscoin/how-to-start-cpu-mining-verus-coin-vrsc-from-your-laptop-in-under-5-minutes-f69c9aae340e?source=post_page---author_recirc--f98079c00ed0----1---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

![Verus Beginner’s Staking Guide](https://miro.medium.com/v2/resize:fit:679/1*GHpZSHyuVza6Bnu5O1rN2Q.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0----2---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0----2---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

by

[Lex English](https://medium.com/@solidfreez?source=post_page---author_recirc--f98079c00ed0----2---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

Mar 8, 2021

[238](https://medium.com/veruscoin/verus-beginners-staking-guide-efbbdc4de951?source=post_page---author_recirc--f98079c00ed0----2---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

![How-to Participate in the Verus-Ethereum Bridge Launch](https://miro.medium.com/v2/resize:fit:679/1*aqnqO2cA4GCdZ6h3dZ5ABA.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0----3---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0----3---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

by

[Max Theyse](https://medium.com/@meyse?source=post_page---author_recirc--f98079c00ed0----3---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

Oct 11, 2023

[146](https://medium.com/veruscoin/how-to-participate-in-the-verus-ethereum-bridge-launch-73aeeae1c76a?source=post_page---author_recirc--f98079c00ed0----3---------------------f85ef29a_922e_42e4_9c5a_57989d8b266f--------------)

[See all from Max Theyse](https://medium.com/@meyse?source=post_page---author_recirc--f98079c00ed0---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--f98079c00ed0---------------------------------------)

## Recommended from Medium

![This new IDE from Google is an absolute game changer](https://miro.medium.com/v2/resize:fit:679/1*f-1HQQng85tbA7kwgECqoQ.png)

[![Coding Beauty](https://miro.medium.com/v2/resize:fill:20:20/1*ViyWUoh4zqx294no1eENxw.png)](https://medium.com/coding-beauty?source=post_page---read_next_recirc--f98079c00ed0----0---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

In

[Coding Beauty](https://medium.com/coding-beauty?source=post_page---read_next_recirc--f98079c00ed0----0---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

by

[Tari Ibaba](https://medium.com/@tariibaba?source=post_page---read_next_recirc--f98079c00ed0----0---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

Mar 11

[5K\\
\\
294](https://medium.com/coding-beauty/new-google-project-idx-fae1fdd079c7?source=post_page---read_next_recirc--f98079c00ed0----0---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

![You Can Make Money With AI Without Quitting Your Job](https://miro.medium.com/v2/resize:fit:679/1*kronPqvBjIJFWp2ANVlpwA.jpeg)

[![Learn AI for Profit](https://miro.medium.com/v2/resize:fill:20:20/1*MDbgiQN0r_f0k9x45YcB7g.png)](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--f98079c00ed0----1---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

In

[Learn AI for Profit](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--f98079c00ed0----1---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

by

[Nipuna Maduranga](https://medium.com/@techtheboy?source=post_page---read_next_recirc--f98079c00ed0----1---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

Mar 24

[8.2K\\
\\
383](https://medium.com/writing-for-profit-with-ai/you-can-make-money-with-ai-without-quitting-your-job-5296bbcb703b?source=post_page---read_next_recirc--f98079c00ed0----1---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

![An abstract illustration of a vast, dreamy desert landscape under a starry night sky. A small figure sits by a campfire, dwarfed by the large silhouette of a serene face blending into the sand dunes, creating a surreal and contemplative atmosphere.](https://miro.medium.com/v2/resize:fit:679/0*hIyZn7taxr6gJqmC.jpg)

[![The Startup](https://miro.medium.com/v2/resize:fill:20:20/1*pKOfOAOvx-fWzfITATgGRg.jpeg)](https://medium.com/swlh?source=post_page---read_next_recirc--f98079c00ed0----0---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

In

[The Startup](https://medium.com/swlh?source=post_page---read_next_recirc--f98079c00ed0----0---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

by

[Jano le Roux](https://medium.com/@janoleroux?source=post_page---read_next_recirc--f98079c00ed0----0---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

Dec 2, 2024

[7K\\
\\
193](https://medium.com/swlh/how-this-17-year-old-quietly-built-a-1-12m-month-ai-app-970dd0637fe8?source=post_page---read_next_recirc--f98079c00ed0----0---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

![The 5 paid subscriptions I actually use in 2025 as a Staff Software Engineer](https://miro.medium.com/v2/resize:fit:679/1*3XS-8r8adjnRoNH4YjKXpw.png)

[![Level Up Coding](https://miro.medium.com/v2/resize:fill:20:20/1*5D9oYBd58pyjMkV_5-zXXQ.jpeg)](https://medium.com/gitconnected?source=post_page---read_next_recirc--f98079c00ed0----1---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

In

[Level Up Coding](https://medium.com/gitconnected?source=post_page---read_next_recirc--f98079c00ed0----1---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

by

[Jacob Bennett](https://medium.com/@jacobistyping?source=post_page---read_next_recirc--f98079c00ed0----1---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

Jan 7

[12.8K\\
\\
318](https://medium.com/gitconnected/the-5-paid-subscriptions-i-actually-use-in-2025-as-a-staff-software-engineer-98033c94566e?source=post_page---read_next_recirc--f98079c00ed0----1---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

![How I Made $3k in a Week with a Custom TypeScript Crypto Bot](https://miro.medium.com/v2/resize:fit:679/0*lMrcZONPu0gRVdJZ)

[![Block Magnates](https://miro.medium.com/v2/resize:fill:20:20/1*_DO7SflM7OJTc25NWdZoiA.png)](https://medium.com/block-magnates?source=post_page---read_next_recirc--f98079c00ed0----2---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

In

[Block Magnates](https://medium.com/block-magnates?source=post_page---read_next_recirc--f98079c00ed0----2---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

by

[Sina Farhadi](https://medium.com/@sinafarhadi?source=post_page---read_next_recirc--f98079c00ed0----2---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

Nov 11, 2024

[134\\
\\
4](https://medium.com/block-magnates/how-i-made-3k-in-a-week-with-a-custom-typescript-crypto-bot-15068fccf6f6?source=post_page---read_next_recirc--f98079c00ed0----2---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

![Is Cursor better than VS Code with Copilot? Absolutely and it’s not close](https://miro.medium.com/v2/resize:fit:679/1*OzS9E-P_I_C9hDQbO03LJg.png)

[![Realworld AI Use Cases](https://miro.medium.com/v2/resize:fill:20:20/1*XI6BeGL0qu7yzh0e3nkmIw.png)](https://medium.com/realworld-ai-use-cases?source=post_page---read_next_recirc--f98079c00ed0----3---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

In

[Realworld AI Use Cases](https://medium.com/realworld-ai-use-cases?source=post_page---read_next_recirc--f98079c00ed0----3---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

by

[Chris Dunlop](https://medium.com/@chrisdunlop_37984?source=post_page---read_next_recirc--f98079c00ed0----3---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

Mar 7

[1K\\
\\
34](https://medium.com/realworld-ai-use-cases/is-cursor-better-than-vs-code-with-copilot-absolutely-and-its-not-close-180b08d163f8?source=post_page---read_next_recirc--f98079c00ed0----3---------------------e62f29cb_25c9_4870_b05d_e18b2781b868--------------)

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--f98079c00ed0---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----f98079c00ed0---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----f98079c00ed0---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----f98079c00ed0---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----f98079c00ed0---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----f98079c00ed0---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----f98079c00ed0---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----f98079c00ed0---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----f98079c00ed0---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----f98079c00ed0---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=Hi8UmRMnhdOBM3IuViTkapUP&size=invisible&cb=kwgtfw8ejdm2)