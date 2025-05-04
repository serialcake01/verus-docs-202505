[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2Fdc7785519867&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fjul-oct-2022-verus-monthly-recap-dc7785519867&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fjul-oct-2022-verus-monthly-recap-dc7785519867&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-dc7785519867---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fjul-oct-2022-verus-monthly-recap-dc7785519867&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-dc7785519867---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-dc7785519867---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fjul-oct-2022-verus-monthly-recap-dc7785519867&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-dc7785519867---------------------post_publication_sidebar------------------)

# Jul-Oct 2022 — Verus Monthly Recap

## The latest Verus updates on development, community, ecosystem and more. [Subscribe to the newsletter here](http://eepurl.com/hGNtSH).

[![Max Theyse](https://miro.medium.com/v2/resize:fill:32:32/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---byline--dc7785519867---------------------------------------)

[Max Theyse](https://medium.com/@meyse?source=post_page---byline--dc7785519867---------------------------------------)

Follow

5 min read

·

Nov 16, 2022

1

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3Ddc7785519867&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fjul-oct-2022-verus-monthly-recap-dc7785519867&source=---header_actions--dc7785519867---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*4i50CVdErw_otvzGoyAu8w.png)

You can receive the exact same content through a newsletter. [**Subscribe here**](http://eepurl.com/hGNtSH). I’ll keep things short and to the point.

# Verus Desktop v0.9.5 Update

⏰ **Update your Verus Desktop wallet before 19 November 11 PM UTC.** This release updates the Komodo notaries to season 6 and you must update to reliably stay synchronized to the Verus mainnet (activation height of block 2,291,830).

v0.9.5 introduces 2 new APIs and CLI commands, signdata and verifysignature, that encompass all of the capabilities of previous signing and verification APIs and add new capabilities for advanced signatures and verification — a more powerful and flexible framework for NFTs and ID-bound legal rights and agreements.

In addition to digital signing of documents or information using an ID, the new APIs enable easily binding together multiple sources of content, documents, identities, and VDXF keys together into one verifiable signature and then being able to verify that signature, including all of its specific bindings.

🔗 [**Download Verus Desktop v0.9.5**](https://verus.io/wallet/desktop)

![](https://miro.medium.com/v2/resize:fit:700/1*VsPe52qRn5-VtKpaeRh91A.png)

# Verus PBaaS & DeFi Updates

In anticipation of the Verus PBaaS mainnet upgrade — delivering no-programming needed blockchain and currency launches, MEV-free DeFi, non-custodial Ethereum bridging and so much more — community developers introduce a protocol improvement designed to make the Verus anti-MEV DeFi protocol even more resistant than what we believe was already the leading algorithm to multi-block attempts at MEV.

The protocol improvement makes the following adjustments:

- Conversions and cross-chain transfers still roll-up into exports that are collected from one or more blocks of transfer transactions, but to determine when a block is the last of the prior export or first in the next requires a random bit pulled from later blocks.
- The last miner or staker to complete a block of an export retroactively receives 10% of all fees from processing that export, including all conversions, once the rollup is processed as an import. This reward used to go to the miner or staker who processes the export, which is no longer the case.
- Import transactions can now include up to n/2 arbitrage transactions, where n is the number of reserves in a liquidity basket currency.

These changes together serve to disincentivize any miner or staker from attempting to exclude a large set of transactions from a block and front run all of them, as they will have an even chance of having all of those excluded transactions put back in with their transaction, turning potential gain into potential loss. They would be better off saving their working capital to arbitrage imports by joining transactions, bringing them close to market, and earning money without risk of loss. In addition, if they do end up putting more value of transactions in a block that caps the export rollup, they will reliably earn meaningful rewards without risk of loss in that way as well.

## Bug Bounties 💰

While we don’t expect it to be easy to find bugs in the protocol, The Verus Coin Foundation is offering a bounty of at least 500 VRSC (possibly more for security related reports) for the first 10 people who are first to report any actual protocol bug before mainnet release, meaning failure of a properly executed command or API on a functioning VRSCTEST or PBaaS chain to function as intended.

If anyone is first to find and describe the exploit for an exploitable security hole in any part of the protocol, the bounty will be a minimum of **1,000 VRSC**, and for a serious potential security issue, **10,000 VRSC**.

🗒️ [**See PBaaS-Testnet Release Notes**](https://github.com/VerusCoin/VerusCoin/releases/tag/v0.9.5-2)

🛎️ [**Join Discord and report bounties**](http://www.verus.io/discord)

![](https://miro.medium.com/v2/resize:fit:600/1*JVn6P72mi2myY2LgqqGOjg.png)

# Introducing VerusID to Verus Mobile

This version of Verus Mobile takes a major leap forward, enabling support for VerusID, including sending and receiving funds and use of your VerusID as a password-free, secure and self-sovereign web or mobile app sign-in, made possible with the VerusID authentication protocol.

Verus Mobile v0.3.0–24 supports the version 1.0 of the VerusID authentication protocol, which prepares for the PBaaS upgrade and supports application provisioning of IDs, an important way applications can onboard users, give them a verified self-sovereign ID and funds address, enable sending and receiving payments, and make applications more secure by design with an easy, password-free sign-in.

In addition to its new support for VerusID and the Verus Authentication Protocol, this version of Verus Mobile continues to include Wyre as a fiat on-ramp and maintains support for Bitcoin, Ethereum, and a variety of popular coins and tokens.

If you are an app developer who wants to benefit from and help pioneer a better, more user-centric, inherently commerce-enabled, verifiable application model for a true Internet of Value, this is the release that enables you! If you’ve got mobile or web applications that you are seriously building and would like to integrate VerusID authentication, contact one of the community developers for more details.

🔗 [**Download Verus Mobile with VerusID**](https://verus.io/wallet/mobile)

# The Valuverse

[Valu](https://www.valu.earth/), a company using Verus technology, gave a sneak preview of their upcoming Valuverse. A virtual world where you are at the centre of your value. Check out the awesome videos below.

Twitter Embed

[Visit this post on X](https://twitter.com/lyonsnicholas1/status/1582830353521463297?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07) [Visit this post on X](https://twitter.com/lyonsnicholas1/status/1572817446016520192?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

[![](https://pbs.twimg.com/profile_images/1499065754313887747/_YAZWd_X_normal.jpg)](https://twitter.com/lyonsnicholas1?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

[Valu.Earth](https://twitter.com/lyonsnicholas1?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

·

[Sep 22, 2022](https://twitter.com/lyonsnicholas1/status/1572817446016520192?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

[@lyonsnicholas1](https://twitter.com/lyonsnicholas1?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

·

[Follow](https://twitter.com/intent/follow?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&screen_name=lyonsnicholas1)

[View on X](https://twitter.com/lyonsnicholas1/status/1572817446016520192?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

Welcome to the Valuverse - where you are the centre of Valu - Secure Private and Provable Vaults enable You to participate in the Information Economy of Me & We - Coming soon on Verus [#Consilience](https://twitter.com/hashtag/Consilience?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&src=hashtag_click)[#SelfSovereign](https://twitter.com/hashtag/SelfSovereign?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&src=hashtag_click)[#ConsciousAgency](https://twitter.com/hashtag/ConsciousAgency?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&src=hashtag_click)

![](https://pbs.twimg.com/ext_tw_video_thumb/1572817067216175104/pu/img/dZdvHS0pSn_DGu5k.jpg)

[Watch on X](https://twitter.com/lyonsnicholas1/status/1572817446016520192?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es2_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

[![](https://pbs.twimg.com/profile_images/1499065754313887747/_YAZWd_X_normal.jpg)](https://twitter.com/lyonsnicholas1?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

[Valu.Earth](https://twitter.com/lyonsnicholas1?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

[@lyonsnicholas1](https://twitter.com/lyonsnicholas1?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

·

[Follow](https://twitter.com/intent/follow?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&screen_name=lyonsnicholas1)

Welcome to the Valuverse - where you are the centre of Valu - Secure Private and Provable Vaults enable You to participate in the Information Economy of Me & We - Coming soon on Verus [#Consilience](https://twitter.com/hashtag/Consilience?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&src=hashtag_click)[#SelfSovereign](https://twitter.com/hashtag/SelfSovereign?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&src=hashtag_click)[#ConsciousAgency](https://twitter.com/hashtag/ConsciousAgency?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&src=hashtag_click)

![](https://pbs.twimg.com/ext_tw_video_thumb/1582830214073225252/pu/img/T2zkdx9YzvYITIUX.jpg)

[Watch on X](https://twitter.com/lyonsnicholas1/status/1582830353521463297?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

[8:25 PM · Oct 19, 2022](https://twitter.com/lyonsnicholas1/status/1582830353521463297?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

[X Ads info and privacy](https://help.twitter.com/en/twitter-for-websites-ads-info-and-privacy)

[32](https://twitter.com/intent/like?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&tweet_id=1582830353521463297) [Reply](https://twitter.com/intent/tweet?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07&in_reply_to=1582830353521463297)

Copy link

[Read 1 reply](https://twitter.com/lyonsnicholas1/status/1582830353521463297?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1582830353521463297%7Ctwgr%5E6b2279b622804c8cbeb552cc5b1690514084a399%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fcdn.embedly.com%2Fwidgets%2Fmedia.html%3Ftype%3Dtext2Fhtmlkey%3Da19fcc184b9711e1b4764040d3dc5c07schema%3Dtwitterurl%3Dhttps3A%2F%2Ftwitter.com%2Flyonsnicholas1%2Fstatus%2F1582830353521463297image%3Dhttps3A%2F%2Fi.embed.ly%2F1%2Fimage3Furl3Dhttps253A252F252Fabs.twimg.com252Ferrors252Flogo46x38.png26key3Da19fcc184b9711e1b4764040d3dc5c07)

Twitter Widget Iframe

![](https://miro.medium.com/v2/resize:fit:700/1*UKOuBxarpOYCi0uWSg19Rg@2x.png)

# Join Twitter Army 🐦🛎️

We need your help! The Verus community wants to amplify tweets that are important. We make it easy for you: get notified when there are high-quality tweets that need more likes and retweets.

[Join the discord](http://www.verus.io/discord), assign yourself the role of ‘ **Tweet & Share**’ (in the #welcome channel) and get retweeting!

![](https://miro.medium.com/v2/resize:fit:601/1*JGA8jAbKmG7c91wy5Ox_ag.png)

# Verus Network Halving

The Verus network block reward halving is almost around the corner. At block 2,329,920 (~Saturday 17 Dec 2022), the block reward will go from 12 to 6 VRSC.

⏰ [**Countdown website**](https://countdown.verus.io/halving/)

# New Marketing Videos

A Better Way - Verus - YouTube

VerusCoin Community

36.4K subscribers

[A Better Way - Verus](https://www.youtube.com/watch?v=oKwjfIRcXQY)

VerusCoin Community

Search

Watch later

Share

Copy link

Info

Shopping

Tap to unmute

If playback doesn't begin shortly, try restarting your device.

More videos

## More videos

You're signed out

Videos you watch may be added to the TV's watch history and influence TV recommendations. To avoid this, cancel and sign in to YouTube on your computer.

CancelConfirm

Share

Include playlist

An error occurred while retrieving sharing information. Please try again later.

[Watch on](https://www.youtube.com/watch?v=oKwjfIRcXQY&embeds_widget_referrer=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fjul-oct-2022-verus-monthly-recap-dc7785519867&embeds_referring_euri=https%3A%2F%2Fcdn.embedly.com%2F&embeds_referring_origin=https%3A%2F%2Fcdn.embedly.com)

0:00

0:00 / 2:51•Live

•

[Watch on YouTube](https://www.youtube.com/watch?v=oKwjfIRcXQY "Watch on YouTube")

Start Building the Real Promise of Web3 - Verus - YouTube

VerusCoin Community

36.4K subscribers

[Start Building the Real Promise of Web3 - Verus](https://www.youtube.com/watch?v=dazF_0o0pdQ)

VerusCoin Community

Search

Watch later

Share

Copy link

Info

Shopping

Tap to unmute

If playback doesn't begin shortly, try restarting your device.

You're signed out

Videos you watch may be added to the TV's watch history and influence TV recommendations. To avoid this, cancel and sign in to YouTube on your computer.

CancelConfirm

More videos

## More videos

Share

Include playlist

An error occurred while retrieving sharing information. Please try again later.

[Watch on](https://www.youtube.com/watch?v=dazF_0o0pdQ&embeds_widget_referrer=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fjul-oct-2022-verus-monthly-recap-dc7785519867&embeds_referring_euri=https%3A%2F%2Fcdn.embedly.com%2F&embeds_referring_origin=https%3A%2F%2Fcdn.embedly.com)

0:00

0:00 / 0:46•Live

•

[Watch on YouTube](https://www.youtube.com/watch?v=dazF_0o0pdQ "Watch on YouTube")

## [Subscribe to get the (bi-)monthly recap to your mailbox](http://eepurl.com/hGNtSH)

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

[Blockchain](https://medium.com/tag/blockchain?source=post_page-----dc7785519867---------------------------------------)

[Cryptocurrency News](https://medium.com/tag/cryptocurrency-news?source=post_page-----dc7785519867---------------------------------------)

[Digital Identity](https://medium.com/tag/digital-identity?source=post_page-----dc7785519867---------------------------------------)

[Blockchain Technology](https://medium.com/tag/blockchain-technology?source=post_page-----dc7785519867---------------------------------------)

[Crypto](https://medium.com/tag/crypto?source=post_page-----dc7785519867---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--dc7785519867---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--dc7785519867---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--dc7785519867---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--dc7785519867---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--dc7785519867---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Max Theyse](https://miro.medium.com/v2/resize:fill:48:48/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---post_author_info--dc7785519867---------------------------------------)

[![Max Theyse](https://miro.medium.com/v2/resize:fill:64:64/2*wB0L_50mdCxD-Vg8_OvUwQ.png)](https://medium.com/@meyse?source=post_page---post_author_info--dc7785519867---------------------------------------)

Follow

[**Written by Max Theyse**](https://medium.com/@meyse?source=post_page---post_author_info--dc7785519867---------------------------------------)

[171 Followers](https://medium.com/@meyse/followers?source=post_page---post_author_info--dc7785519867---------------------------------------)

· [6 Following](https://medium.com/@meyse/following?source=post_page---post_author_info--dc7785519867---------------------------------------)

Follow

## No responses yet

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fjul-oct-2022-verus-monthly-recap-dc7785519867&source=---post_responses--dc7785519867---------------------respond_sidebar------------------)

Cancel

Respond

## More from Max Theyse and Verus Coin

![Verus: Profit Generating Protocol for Miners and Stakers](https://miro.medium.com/v2/resize:fit:679/1*mM9OwDNz-t2F5ZA2N1o1Jw.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--dc7785519867----0---------------------2702c5af_0293_46c3_a141_e1d78218ea29--------------)

In

by

May 11, 2021

[311](https://medium.com/veruscoin/verus-profit-generating-protocol-for-miners-and-stakers-2d2b454aa330?source=post_page---author_recirc--dc7785519867----0---------------------2702c5af_0293_46c3_a141_e1d78218ea29--------------)

![How to Start CPU Mining Verus Coin VRSC from Your Computer  in Under 5 Minutes](https://miro.medium.com/v2/resize:fit:679/1*hPK9_NibFVInWPsgIIxvzg.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--dc7785519867----1---------------------2702c5af_0293_46c3_a141_e1d78218ea29--------------)

In

by

Jan 9, 2019

[332\\
\\
1](https://medium.com/veruscoin/how-to-start-cpu-mining-verus-coin-vrsc-from-your-laptop-in-under-5-minutes-f69c9aae340e?source=post_page---author_recirc--dc7785519867----1---------------------2702c5af_0293_46c3_a141_e1d78218ea29--------------)

![Verus Beginner’s Staking Guide](https://miro.medium.com/v2/resize:fit:679/1*GHpZSHyuVza6Bnu5O1rN2Q.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--dc7785519867----2---------------------2702c5af_0293_46c3_a141_e1d78218ea29--------------)

In

by

Mar 8, 2021

[238](https://medium.com/veruscoin/verus-beginners-staking-guide-efbbdc4de951?source=post_page---author_recirc--dc7785519867----2---------------------2702c5af_0293_46c3_a141_e1d78218ea29--------------)

![How-to Participate in the Verus-Ethereum Bridge Launch](https://miro.medium.com/v2/resize:fit:679/1*aqnqO2cA4GCdZ6h3dZ5ABA.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--dc7785519867----3---------------------2702c5af_0293_46c3_a141_e1d78218ea29--------------)

In

by

Oct 11, 2023

[146](https://medium.com/veruscoin/how-to-participate-in-the-verus-ethereum-bridge-launch-73aeeae1c76a?source=post_page---author_recirc--dc7785519867----3---------------------2702c5af_0293_46c3_a141_e1d78218ea29--------------)

[See all from Max Theyse](https://medium.com/@meyse?source=post_page---author_recirc--dc7785519867---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--dc7785519867---------------------------------------)

## Recommended from Medium

![Free Crypto Mining: How to Get Started Today](https://miro.medium.com/v2/resize:fit:679/1*oYfhg1wVZhUZTAbIgPnh4w.png)

[![Trade Aria](https://miro.medium.com/v2/resize:fill:20:20/1*ZOIW-f0Mf9OxnkLMTtQzuQ.png)](https://medium.com/@tradeariaa?source=post_page---read_next_recirc--dc7785519867----0---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

Nov 19, 2024

[310\\
\\
32](https://medium.com/@tradeariaa/free-crypto-mining-how-to-get-started-today-315435ad0dac?source=post_page---read_next_recirc--dc7785519867----0---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

![You Can Make Money With AI Without Quitting Your Job](https://miro.medium.com/v2/resize:fit:679/1*kronPqvBjIJFWp2ANVlpwA.jpeg)

[![Learn AI for Profit](https://miro.medium.com/v2/resize:fill:20:20/1*MDbgiQN0r_f0k9x45YcB7g.png)](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--dc7785519867----1---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

In

by

Mar 24

[8.2K\\
\\
383](https://medium.com/writing-for-profit-with-ai/you-can-make-money-with-ai-without-quitting-your-job-5296bbcb703b?source=post_page---read_next_recirc--dc7785519867----1---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

![This new IDE from Google is an absolute game changer](https://miro.medium.com/v2/resize:fit:679/1*f-1HQQng85tbA7kwgECqoQ.png)

[![Coding Beauty](https://miro.medium.com/v2/resize:fill:20:20/1*ViyWUoh4zqx294no1eENxw.png)](https://medium.com/coding-beauty?source=post_page---read_next_recirc--dc7785519867----0---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

In

by

Mar 11

[5K\\
\\
294](https://medium.com/coding-beauty/new-google-project-idx-fae1fdd079c7?source=post_page---read_next_recirc--dc7785519867----0---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

![An abstract illustration of a vast, dreamy desert landscape under a starry night sky. A small figure sits by a campfire, dwarfed by the large silhouette of a serene face blending into the sand dunes, creating a surreal and contemplative atmosphere.](https://miro.medium.com/v2/resize:fit:679/0*hIyZn7taxr6gJqmC.jpg)

[![The Startup](https://miro.medium.com/v2/resize:fill:20:20/1*pKOfOAOvx-fWzfITATgGRg.jpeg)](https://medium.com/swlh?source=post_page---read_next_recirc--dc7785519867----1---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

In

by

Dec 2, 2024

[7K\\
\\
193](https://medium.com/swlh/how-this-17-year-old-quietly-built-a-1-12m-month-ai-app-970dd0637fe8?source=post_page---read_next_recirc--dc7785519867----1---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

![How I Made $3k in a Week with a Custom TypeScript Crypto Bot](https://miro.medium.com/v2/resize:fit:679/0*lMrcZONPu0gRVdJZ)

[![Block Magnates](https://miro.medium.com/v2/resize:fill:20:20/1*_DO7SflM7OJTc25NWdZoiA.png)](https://medium.com/block-magnates?source=post_page---read_next_recirc--dc7785519867----2---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

In

by

Nov 11, 2024

[134\\
\\
4](https://medium.com/block-magnates/how-i-made-3k-in-a-week-with-a-custom-typescript-crypto-bot-15068fccf6f6?source=post_page---read_next_recirc--dc7785519867----2---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

![The 1-Minute Introduction That Makes People Remember You Forever](https://miro.medium.com/v2/resize:fit:679/0*Xb8i76SZjoCN3Akn)

[![Psyc Digest](https://miro.medium.com/v2/resize:fill:20:20/1*ntjPWdk0lRb9FiP_zNZqLQ.jpeg)](https://medium.com/social-science-weekly?source=post_page---read_next_recirc--dc7785519867----3---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

In

by

Apr 12

[22K\\
\\
514](https://medium.com/social-science-weekly/the-1-minute-introduction-that-makes-people-remember-you-forever-497cefcfdccc?source=post_page---read_next_recirc--dc7785519867----3---------------------6b774e7b_a409_40b3_94fd_c07ee93e83e0--------------)

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--dc7785519867---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----dc7785519867---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----dc7785519867---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----dc7785519867---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----dc7785519867---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----dc7785519867---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----dc7785519867---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----dc7785519867---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----dc7785519867---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----dc7785519867---------------------------------------)

reCAPTCHA

Recaptcha requires verification.

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)

protected by **reCAPTCHA**

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)