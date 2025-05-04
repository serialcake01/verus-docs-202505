[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2F686fc7a5b6e7&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-update-veruscoin-graphical-gui-wallet-to-0-4-0a-for-linux-686fc7a5b6e7&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-update-veruscoin-graphical-gui-wallet-to-0-4-0a-for-linux-686fc7a5b6e7&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-686fc7a5b6e7---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-update-veruscoin-graphical-gui-wallet-to-0-4-0a-for-linux-686fc7a5b6e7&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-686fc7a5b6e7---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-686fc7a5b6e7---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-update-veruscoin-graphical-gui-wallet-to-0-4-0a-for-linux-686fc7a5b6e7&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-686fc7a5b6e7---------------------post_publication_sidebar------------------)

# How to Update VerusCoin Graphical (GUI) Wallet to Latest Version

## Step-by-step for updating to the latest version of Verus GUI wallet on Ubuntu Linux and Windows

[![Oliver](https://miro.medium.com/v2/resize:fill:32:32/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---byline--686fc7a5b6e7---------------------------------------)

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---byline--686fc7a5b6e7---------------------------------------)

Follow

6 min read

·

Oct 19, 2018

50

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3D686fc7a5b6e7&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-update-veruscoin-graphical-gui-wallet-to-0-4-0a-for-linux-686fc7a5b6e7&source=---header_actions--686fc7a5b6e7---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*APRzKQCm77nlbw2B0m7csA.png)

In this post I’ll walk through the steps to updating to the **latest Verus**(GUI) from a previous release. These steps may also be used for performing a fresh install of the latest Verus wallet, including installing the wallet in tandem on a system which already has Agama by Komodo installed.

Verus wallet is an modified and enhanced build of Agama. Verus includes enhancements such as mining, staking, and latest zero knowledge Sapling features built in. Because Verus wallet is a build of Agama, relying on the same daemon (komodod) in the background, installing it side by side, on a system already containing Agama by Komodo does take a little finesse to ensure both wallets work correctly, when all is said and done.

# IMPORTANT NOTICE

**All nodes, CLI or GUI, must be v0.5.3 or later (0.5.1 on Mac) unless otherwise announced on the official Verus Discord or Medium. Please update your wallet immediately if you are running an older version.**

**Download binary for your OS:**

[https://veruscoin.io/#download](https://veruscoin.io/#download)

**For ALL step-by-steps below, be sure to shutdown Agama and/or Verus wallet and backup your wallet.dat files for ALL coins you have activated.** In Step 1 of each section below I’ll walk you through the process of creating a backup of your entire hidden komodo folder, which includes your wallet files, just for good measure.

# Graphical Wallet (GUI) — Linux and Windows

In Linux it’s easiest to do much of the work from a terminal but many of the steps can be performed either from the terminal or by using your desktop environment. That said, for Linux steps I’ll be using the Terminal commands in the following steps.

## STEP 1 — Backup `hidden komodo` folder, including wallet.dat files (If updating Verus, or installing Verus alongside an existing Agama install)

## Linux:

- Open a new terminal and navigate to your home folder with `cd ~`
- Copy the entire hidden `.komodo` folder to a backup location. The easiest is to issue the command `cp .komodo BK-komodo`
- Remove the old version of Verus, if you are updating. Simply delete the Verus application folder you previously had extracted.

## Windows:

- Click Start and type `%appdata%` and press ENTER
- Copy the “ **Komodo”** folder found within to “ **BK-komodo”**
- Remove the old version of Verus, if you are updating. You can simply delete the Verus application folder you previously had extracted.

## STEP 2 — Get Latest Version of Verus GUI Wallet

- Download the latest version from one of the following official locations:

[**https://veruscoin.io/#download**](https://veruscoin.io/#download)
- Unzip the application folder where you would like (e.g. Desktop) and rename it to something like “Verus v0.N” where “N” is the current version number, so it’s easier to track which wallet and version you’re running.

Most users can skip ahead to Step 5…if, however, you have any issues with syncing, follow Steps 3 and 4.

## STEP 3 (Optional) — Get Recent VRSC Bootstrap

If this is your first time installing, or you had any issues with updating or syncing, you may want to download the Bootstrap of VRSC which can speed up the Verus sync process.

## Linux:

- From the terminal, navigate to your home folder with `cd ~` and download the latest VRSC bootstrap by issuing the following command:

```
wget https://bootstrap.0x03.services/veruscoin/VRSC-bootstrap.tar.gz
```

- Delete the contents of your `~/.komodo/VRSC` folder, ensuring your wallet.dat file was backed up in Step 1.
- After the download completes, unpack the file into your .komodo/VRSC folder with the following command:

```
tar -xvf VRSC-bootstrap.tar.gz -C .komodo/VRSC
```

## Windows:

- Open your browser and paste the following URL

```
https://bootstrap.0x03.services/veruscoin/VRSC-bootstrap.tar.gz
```

- You may need [7-Zip](https://www.7-zip.org/) to unzip this file.
- Delete the contents of your `%appdata%\Komodo\VRSC` folder, ensuring your wallet.dat file was backed up in Step 1.
- When the file completes downloading, unzip the contents into the following folder: `%appdata%\Komodo\VRSC`

## Note:

_New wallet.dat files will be generated in these folders during the first launch of the updated Verus wallet while it syncs up, you’ll overwrite these files later with your backed-up wallet if you are updating._

## STEP 4 (Optional) — Get Recent KMD Bootstrap

If you are installing Verus alongside a version of Komodo’s Agama wallet, or you would like support for KMD native within Verus wallet, you’ll need to sync the entire Komodo blockchain again due to the new Zcash Params which come with this latest version of Verus. Since the KMD blockchain is so large, it’s recommended to download a recent bootstrap to save time syncing.

## Linux:

- From the terminal, navigate to your home folder with `cd ~` and download the latest KMD bootstrap by issuing the following command:

```
wget https://bootstrap.0x03.services/komodo/KMD-bootstrap.tar.gz
```

- After the download completes, unpack the file into your .komodo folder with the following command:

```
tar -xvf KMD-bootstrap.tar.gz -C .komodo
```

## Windows:

- Open your browser and paste the following URL

```
https://bootstrap.0x03.services/komodo/KMD-bootstrap.tar.gz
```

- You may need [7-Zip](https://www.7-zip.org/) to unzip this file.
- When the file completes downloading, unzip the contents into the following folder: `%appdata%\Komodo`

## STEP 5 — First, Launch Verus Wallet

- On first launch of the newly updated Verus wallet choose VRSC under the “Native Mode” drop down.
- You’ll receive a modal prompt to download the latest Zcash Params, follow the steps to do so.
- After the Zcash Params have completed downloading, close the modal and again select VRSC from “Native Mode”
- Verus will launch and begin to sync. This process may take a few minutes. Allow the sync to reach 100% before proceeding.

## STEP 6 (Optional) — Enabling KMD

If you’re including KMD support in your Verus wallet, or installing Verus alongside Agama, you’ll want to follow this step.

After Verus wallet has been launched and synced up with VerusCoin, close the wallet and wait for it to shut down completely before proceeding.

- Launch Verus wallet and choose KMD from the “Native Mode” drop down list.
- Komodo will launch and begin to sync. This process may take a few minutes. Allow the sync to reach 100%.
- After Komodo has fully synced, it is safe to click “Activate Coin” and add VRSC in Native mode. It may take some time, but after several minutes both wallets will display, both in Native mode at 100% each.

## STEP 7 (Optional) — Restore wallet.dat Files (If You Followed Steps 3 and 4)

If you are performing an update and followed Steps 3 and 4 above in which you cleared out the contents of your hidden VRSC and Komodo folders, you now need to restore your original wallet.dat files.

- First close Verus wallet and wait for it to shut down completely.
- Copy your backed up wallet.dat files back into their appropriate folders

**Linux:** KMD wallet.dat file goes into `/home/yourusername/.komodo` and Verus wallet.dat file goes into `/home/yourusername/.komodo/VRSC ` **Windows:** KMD wallet.dat file goes into `%appdata%/Komodo` and Verus wallet.dat file goes into `%appdata%/Komodo/VRSC`

To restore the backup we created in Step 1, simply do the following:

## Linux

-In a Terminal window, go to your home folder: `cd ~`

-Restore KMD Wallet with: `cp BK-komodo/wallet.dat .komodo`

-Restore VRSC Wallet with: `cp BK-komodo/VRSC/wallet.dat .komodo/VRSC`

## Windows

-Click Start and type `%appdata%` then hit ENTER.

-Copy the wallet.dat file within the BK-komodo folder and paste into the Komodo folder.

-Within BK-komodo folder, open the VRSC folder and copy the wallet.dat file, then paste into the VRSC folder found within the Komodo folder.

## STEP 8 — Clean up

After verifying everything works, your wallets are restored and showing balances (if you did an update), and that everything is syncing correctly, you can clean up a little to save space on your drive.

For example, you can remove the BK-komodo folder, although I would ensure ALL wallet files are restored and/or backed up elsewhere first.

You may also want to remove any old versions of Verus wallet or Agama, name the new application folders appropriately, create links, etc.

Lastly, it’s safe to delete the Bootstrap files you downloaded and can save a few GB of space. If you need to do any updates in the future you’ll want to download recent bootstraps for that time to make most use of them, so deleting these is no problem.

# Resources and About Verus

To learn more about VerusCoin, **visit** [**https://veruscoin.io**](https://veruscoin.io/) and join the official [**Verus Discord**](https://discord.gg/VRKMP2S).

- [**VerusCoin Successfully Activates Sapling, Plus More Improvements**](https://medium.com/veruscoin/veruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c)
- [**Verus Coin 0.4.0 Official Release Notes**](https://medium.com/veruscoin/verus-coin-0-4-0-release-notes-e7eb35772bff)
- [**Verus Pocket Guide — Start Here**](https://medium.com/@benohanlon/a-pocket-guide-to-verus-coin-f0c86e976c33)
- [**How Verus Solved Proof of Stake problem “Nothing at Stake”**](https://medium.com/veruscoin/how-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e)
- [**Everything You Need to Know About the Sapling Upgrade**](https://medium.com/@EthAdvisor/everything-you-need-to-know-about-the-upcoming-zcash-sapling-upgrade-why-its-so-important-and-b5787cc7b68e)

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

[Blockchain](https://medium.com/tag/blockchain?source=post_page-----686fc7a5b6e7---------------------------------------)

[Bitcoin](https://medium.com/tag/bitcoin?source=post_page-----686fc7a5b6e7---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----686fc7a5b6e7---------------------------------------)

[Veruscoin](https://medium.com/tag/veruscoin?source=post_page-----686fc7a5b6e7---------------------------------------)

[Updates](https://medium.com/tag/updates?source=post_page-----686fc7a5b6e7---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--686fc7a5b6e7---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--686fc7a5b6e7---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--686fc7a5b6e7---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--686fc7a5b6e7---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--686fc7a5b6e7---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Oliver](https://miro.medium.com/v2/resize:fill:48:48/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--686fc7a5b6e7---------------------------------------)

[![Oliver](https://miro.medium.com/v2/resize:fill:64:64/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--686fc7a5b6e7---------------------------------------)

Follow

[**Written by Oliver**](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--686fc7a5b6e7---------------------------------------)

[252 Followers](https://medium.com/@OliverWestbrook/followers?source=post_page---post_author_info--686fc7a5b6e7---------------------------------------)

· [20 Following](https://medium.com/@OliverWestbrook/following?source=post_page---post_author_info--686fc7a5b6e7---------------------------------------)

coding; blockchain; freewriting;

Follow

## No responses yet

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-update-veruscoin-graphical-gui-wallet-to-0-4-0a-for-linux-686fc7a5b6e7&source=---post_responses--686fc7a5b6e7---------------------respond_sidebar------------------)

Cancel

Respond

## More from Oliver and Verus Coin

![How to Start CPU Mining Verus Coin VRSC from Your Computer  in Under 5 Minutes](https://miro.medium.com/v2/resize:fit:679/1*hPK9_NibFVInWPsgIIxvzg.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7----0---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7----0---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

by

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--686fc7a5b6e7----0---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

Jan 9, 2019

[332\\
\\
1](https://medium.com/veruscoin/how-to-start-cpu-mining-verus-coin-vrsc-from-your-laptop-in-under-5-minutes-f69c9aae340e?source=post_page---author_recirc--686fc7a5b6e7----0---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

![Verus: Profit Generating Protocol for Miners and Stakers](https://miro.medium.com/v2/resize:fit:679/1*mM9OwDNz-t2F5ZA2N1o1Jw.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7----1---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7----1---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

by

[Max Theyse](https://medium.com/@meyse?source=post_page---author_recirc--686fc7a5b6e7----1---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

May 11, 2021

[311](https://medium.com/veruscoin/verus-profit-generating-protocol-for-miners-and-stakers-2d2b454aa330?source=post_page---author_recirc--686fc7a5b6e7----1---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

![Verus Beginner’s Staking Guide](https://miro.medium.com/v2/resize:fit:679/1*GHpZSHyuVza6Bnu5O1rN2Q.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7----2---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7----2---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

by

[Lex English](https://medium.com/@solidfreez?source=post_page---author_recirc--686fc7a5b6e7----2---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

Mar 8, 2021

[238](https://medium.com/veruscoin/verus-beginners-staking-guide-efbbdc4de951?source=post_page---author_recirc--686fc7a5b6e7----2---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

![How to Earn VRSC Mining with Your CPU and Staking Mined Coins!](https://miro.medium.com/v2/resize:fit:679/1*MmYDDKqG3ExrvJ97APB0Gg.png)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:20:20/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7----3---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

In

[Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7----3---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

by

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--686fc7a5b6e7----3---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

Jan 11, 2019

[296\\
\\
2](https://medium.com/veruscoin/how-to-earn-vrsc-solo-mining-with-your-cpu-and-staking-mined-coins-aa27da76882c?source=post_page---author_recirc--686fc7a5b6e7----3---------------------832c1026_57b5_4c35_8d0e_94c8e3cb7f8e--------------)

[See all from Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--686fc7a5b6e7---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--686fc7a5b6e7---------------------------------------)

## Recommended from Medium

![You Can Make Money With AI Without Quitting Your Job](https://miro.medium.com/v2/resize:fit:679/1*kronPqvBjIJFWp2ANVlpwA.jpeg)

[![Learn AI for Profit](https://miro.medium.com/v2/resize:fill:20:20/1*MDbgiQN0r_f0k9x45YcB7g.png)](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--686fc7a5b6e7----0---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

In

[Learn AI for Profit](https://medium.com/writing-for-profit-with-ai?source=post_page---read_next_recirc--686fc7a5b6e7----0---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

by

[Nipuna Maduranga](https://medium.com/@techtheboy?source=post_page---read_next_recirc--686fc7a5b6e7----0---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

Mar 24

[8.2K\\
\\
383](https://medium.com/writing-for-profit-with-ai/you-can-make-money-with-ai-without-quitting-your-job-5296bbcb703b?source=post_page---read_next_recirc--686fc7a5b6e7----0---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

![This new IDE from Google is an absolute game changer](https://miro.medium.com/v2/resize:fit:679/1*f-1HQQng85tbA7kwgECqoQ.png)

[![Coding Beauty](https://miro.medium.com/v2/resize:fill:20:20/1*ViyWUoh4zqx294no1eENxw.png)](https://medium.com/coding-beauty?source=post_page---read_next_recirc--686fc7a5b6e7----1---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

In

[Coding Beauty](https://medium.com/coding-beauty?source=post_page---read_next_recirc--686fc7a5b6e7----1---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

by

[Tari Ibaba](https://medium.com/@tariibaba?source=post_page---read_next_recirc--686fc7a5b6e7----1---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

Mar 11

[5K\\
\\
294](https://medium.com/coding-beauty/new-google-project-idx-fae1fdd079c7?source=post_page---read_next_recirc--686fc7a5b6e7----1---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

![After Age 40, You Need to Stop Doing These Morning Habits — That Speed Up Aging](https://miro.medium.com/v2/resize:fit:679/0*VvRmJCLAZSb94IxC)

[![ILLUMINATION](https://miro.medium.com/v2/resize:fill:20:20/1*AZxiin1Cvws3J0TwNUP2sQ.png)](https://medium.com/illumination?source=post_page---read_next_recirc--686fc7a5b6e7----0---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

In

[ILLUMINATION](https://medium.com/illumination?source=post_page---read_next_recirc--686fc7a5b6e7----0---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

by

[Dr. Nikita Singh](https://medium.com/@nikkihere?source=post_page---read_next_recirc--686fc7a5b6e7----0---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

Apr 21

[5.1K\\
\\
96](https://medium.com/illumination/after-age-40-you-need-to-stop-doing-these-morning-habits-that-speed-up-aging-1c0259e2cac1?source=post_page---read_next_recirc--686fc7a5b6e7----0---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

![An abstract illustration of a vast, dreamy desert landscape under a starry night sky. A small figure sits by a campfire, dwarfed by the large silhouette of a serene face blending into the sand dunes, creating a surreal and contemplative atmosphere.](https://miro.medium.com/v2/resize:fit:679/0*hIyZn7taxr6gJqmC.jpg)

[![The Startup](https://miro.medium.com/v2/resize:fill:20:20/1*pKOfOAOvx-fWzfITATgGRg.jpeg)](https://medium.com/swlh?source=post_page---read_next_recirc--686fc7a5b6e7----1---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

In

[The Startup](https://medium.com/swlh?source=post_page---read_next_recirc--686fc7a5b6e7----1---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

by

[Jano le Roux](https://medium.com/@janoleroux?source=post_page---read_next_recirc--686fc7a5b6e7----1---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

Dec 2, 2024

[7K\\
\\
193](https://medium.com/swlh/how-this-17-year-old-quietly-built-a-1-12m-month-ai-app-970dd0637fe8?source=post_page---read_next_recirc--686fc7a5b6e7----1---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

![I worked for Pope Francis. Here is what he was really like.](https://miro.medium.com/v2/resize:fit:679/1*KJXUZtG1xEstwM9FA2gRoQ.jpeg)

[![Daniel B. Gallagher](https://miro.medium.com/v2/resize:fill:20:20/1*Z06HflhKbMIQt-gQ4MoqJA.jpeg)](https://medium.com/@frdbg70?source=post_page---read_next_recirc--686fc7a5b6e7----2---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

[Daniel B. Gallagher](https://medium.com/@frdbg70?source=post_page---read_next_recirc--686fc7a5b6e7----2---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

Apr 21

[14K\\
\\
273](https://medium.com/@frdbg70/i-worked-for-pope-francis-here-is-what-he-was-really-like-e6931c449e27?source=post_page---read_next_recirc--686fc7a5b6e7----2---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

![The 1-Minute Introduction That Makes People Remember You Forever](https://miro.medium.com/v2/resize:fit:679/0*Xb8i76SZjoCN3Akn)

[![Psyc Digest](https://miro.medium.com/v2/resize:fill:20:20/1*ntjPWdk0lRb9FiP_zNZqLQ.jpeg)](https://medium.com/social-science-weekly?source=post_page---read_next_recirc--686fc7a5b6e7----3---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

In

[Psyc Digest](https://medium.com/social-science-weekly?source=post_page---read_next_recirc--686fc7a5b6e7----3---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

by

[Alessia Fransisca](https://medium.com/@alessiafransisca?source=post_page---read_next_recirc--686fc7a5b6e7----3---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

Apr 12

[22K\\
\\
514](https://medium.com/social-science-weekly/the-1-minute-introduction-that-makes-people-remember-you-forever-497cefcfdccc?source=post_page---read_next_recirc--686fc7a5b6e7----3---------------------7852f13f_04ca_44ce_bc21_137f05bc7c4d--------------)

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--686fc7a5b6e7---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----686fc7a5b6e7---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----686fc7a5b6e7---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----686fc7a5b6e7---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----686fc7a5b6e7---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----686fc7a5b6e7---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----686fc7a5b6e7---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----686fc7a5b6e7---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----686fc7a5b6e7---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----686fc7a5b6e7---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=Hi8UmRMnhdOBM3IuViTkapUP&size=invisible&cb=yf48hvgepi3o)