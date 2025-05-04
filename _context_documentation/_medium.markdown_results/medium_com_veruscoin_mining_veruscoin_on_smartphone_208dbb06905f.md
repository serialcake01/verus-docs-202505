[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2F208dbb06905f&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fmining-veruscoin-on-smartphone-208dbb06905f&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fmining-veruscoin-on-smartphone-208dbb06905f&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-208dbb06905f---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fmining-veruscoin-on-smartphone-208dbb06905f&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-208dbb06905f---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-208dbb06905f---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fmining-veruscoin-on-smartphone-208dbb06905f&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-208dbb06905f---------------------post_publication_sidebar------------------)

# **Mining VerusCoin On a Smartphone**

[![Vhater](https://miro.medium.com/v2/da:true/resize:fill:32:32/0*Fa7sz7_hvJbBP-NX)](https://medium.com/@virhater?source=post_page---byline--208dbb06905f---------------------------------------)

[Vhater](https://medium.com/@virhater?source=post_page---byline--208dbb06905f---------------------------------------)

Follow

4 min read

·

Oct 9, 2020

566

3

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3D208dbb06905f&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fmining-veruscoin-on-smartphone-208dbb06905f&source=---header_actions--208dbb06905f---------------------post_audio_button------------------)

Share

![Xiaomi redmi 9 and a Samsung Galaxy S9 mining To Luckpool.net credit Kr4zywar # 6474 from Discord](https://miro.medium.com/v2/resize:fit:700/1*wnlclgJHroZ9TmM3OlRW4g.png)

Modern cell phones (Octa-Core) are more powerful than computers over eleven years old (Pentium 4) when the advent of bitcoin shook the world.

The only hardware required, in the beginning, was a simple computer… Things have changed a lot in less than 11 years.

So let’s start preparing our Smartphone to mine VerusCoin, we will need to do some steps before.

## **Get a VerusCoin Wallet.**

![](https://miro.medium.com/v2/resize:fit:506/1*8T2IDmLVlhbl2UsYn2Qxxg.png)

chose one of the multiple VerusCoin Wallets To creat Your Mining address

You’ll need a VerusCoin address, which you can create using one of the multiple wallets listed on the [VerusCoin Website](https://veruscoin.io/wallet). Verus Desktop is recommended for Windows/MacOS/Linux, or use the iOS/Android mobile wallet , paper Wallet or other alternate wallets.

![](https://miro.medium.com/v2/resize:fit:430/1*1BOmDrquAkGQOtqvLpUlwA.png)

Linux Command Line on Android With Termux.

## **Install termux**

from: [GooglePlayStore](https://play.google.com/store/apps/details?id=com.termux) or [F-Droid](https://f-droid.org/repository/browse/?fdid=com.termux)

_>Termux is an Android terminal emulator and Linux environment application that works directly with no rooting or setup required. Termux provides a package ecosystem similar to the one in Linux distributions. However you should be aware that Termux is just a regular application running on Android OS._ _summarizing Termux to a terminal is very reductive_

We’ll use only _Termux_ for the rest of this tutorial.

- Check you cpu For AES instructions and also the Architecture We need ARMV8 version

run “ **_lscpu_**” and search for aes, pmull, and armv8/aarch64

![](https://miro.medium.com/v2/resize:fit:700/1*W8q9F-jffdRf3rA49BtBfg.jpeg)

**Install Proot pkg** : ‘ **_pkg install proot_** _’_

_>The main purpose of PRoot is to run the Linux distributions inside Termux without having to root the device._

![](https://miro.medium.com/v2/resize:fit:475/1*-dUHu83JBTMnLLHgzJdmww.png)

[Proot](https://wiki.termux.com/wiki/PRoot)

## **Installing Linux distributions**

_Termux_ provides a package \` _proot-distro_ \`, which allows us to install Linux on a chrooted environment.

_proot-distro_ takes care of management of the Linux distributions inside _Termux_,Install this utility by executing.

**_\`pkg install proot-distro\`_**

_Note: For now it supports these distributions:(Alpine Linux , Arch Linux ,Kali Nethunter , Ubuntu 20.04 )_ for this example we are using ubuntu-20.04

Install Ubunt By : “ **_proot-distro install ubuntu-20.04 ”_**

To login : **_“ proot-distro login ubuntu-20.04_** \`

![](https://miro.medium.com/v2/resize:fit:340/1*i4SA7wMMHwARWdKu2erxgA.png)

Ubuntu logIn

The picture show that we are logged in ubuntu-20.04

Update system packages: **_“ apt-get update && apt-get upgrade -y ”_**

>all the following instructions can be found on the miner repository.

Install additional package and dependencies: **_“ apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano ”_**

> Clone ccminer miner repository: **_“_** ` git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git` **_”_**

![](https://miro.medium.com/v2/resize:fit:689/1*dY1b7Vh277Pt0zC-Snz0zQ.png)

single-branch take two dash as in the picture in cas you see or copy past it Wrong. thanks [keda666](http://twitter.com/keda666) from verus discord

Then cd to “ ccminer/ ” folder and make ‘build.sh’ , ‘configure.sh’ and ‘autogen.sh’ files executable using this command in one line: **_“ chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh “_**

We can then execute “ **./build.sh**” script on the same place and wait for it to compile the miner

If it completes successfully edit the “ **run**” file located in **ccminer** Folder

“ **nano run**” (HIT Enter)

Change **Pool\_url , Mining address** and **Cpu threads Number** ,to save **CTRL+x**, respond by **Y** and hit **Enter**

`./ccminer -a verus -o stratum+tcp://Pool_URL:PORT -u MINING_Address.WORKER_NAME -p x -t THREADS NUMBERS`

It should look like this :

![](https://miro.medium.com/v2/resize:fit:700/1*CPibqE9Y5Ba0QbAM8GFBDg.png)

edit the “ run “ file under ccminer folder to feet your needs :D

> < Prevention is better than the cure>

> **_Its advised to not use all of the cpu threads because mining is an intensive job for the cpu and will cause heat that could damage your device. You can find the number of threads your CPU has on the “CPU(s):” line from lscpu from before. Choose a lower number of threads and monitor your device carefully._**

```
(WARNING! may have battery impact)
```

to Start mining just issue the command \` **./run** \`

![](https://miro.medium.com/v2/resize:fit:654/1*15sN0YN07IY1xoQd1j6KXw.png)

ccminer start Verushashing to luckpool.net

> **_Useful links about Verus_**:
>
> -V [eruscoin Foundation](https://medium.com/veruscoin) \\* [Veruscoin Explor](https://explorer.veruscoin.io/) er \*- [GitHub repo](https://github.com/veruscoin/veruscoin)
>
> \- [Official twitter](https://twitter.com/veruscoin) \\*\- [Community twitter](https://twitter.com/VerusCommunity) \*- [Community YouTube](https://www.youtube.com/channel/UC_-KCHBxaDwSgNMdE3LMThg)
>
> \\*\- [Community facebook](https://www.facebook.com/VerusCoin)\\*\- [Community website](https://www.veruscommunity.io/) \\*\- [Countdown website](https://countdown.veruscoin.io/)

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

[Mining](https://medium.com/tag/mining?source=post_page-----208dbb06905f---------------------------------------)

[Smartphonemining](https://medium.com/tag/smartphonemining?source=post_page-----208dbb06905f---------------------------------------)

[Verus Coin](https://medium.com/tag/verus-coin?source=post_page-----208dbb06905f---------------------------------------)

[Cryptocurrency](https://medium.com/tag/cryptocurrency?source=post_page-----208dbb06905f---------------------------------------)

[Cpu Mining](https://medium.com/tag/cpu-mining?source=post_page-----208dbb06905f---------------------------------------)

[Public domain.](https://creativecommons.org/publicdomain/mark/1.0/)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--208dbb06905f---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--208dbb06905f---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--208dbb06905f---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--208dbb06905f---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--208dbb06905f---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Vhater](https://miro.medium.com/v2/resize:fill:48:48/0*Fa7sz7_hvJbBP-NX)](https://medium.com/@virhater?source=post_page---post_author_info--208dbb06905f---------------------------------------)

[![Vhater](https://miro.medium.com/v2/resize:fill:64:64/0*Fa7sz7_hvJbBP-NX)](https://medium.com/@virhater?source=post_page---post_author_info--208dbb06905f---------------------------------------)

Follow

[**Written by Vhater**](https://medium.com/@virhater?source=post_page---post_author_info--208dbb06905f---------------------------------------)

[45 Followers](https://medium.com/@virhater/followers?source=post_page---post_author_info--208dbb06905f---------------------------------------)

· [14 Following](https://medium.com/@virhater/following?source=post_page---post_author_info--208dbb06905f---------------------------------------)

@ll We Need Is Love —

Follow

## Responses (3)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fmining-veruscoin-on-smartphone-208dbb06905f&source=---post_responses--208dbb06905f---------------------respond_sidebar------------------)

Cancel

Respond

[![Plusentllc](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)](https://medium.com/@plusentllc?source=post_page---post_responses--208dbb06905f----0-----------------------------------)

[Plusentllc](https://medium.com/@plusentllc?source=post_page---post_responses--208dbb06905f----0-----------------------------------)

[Apr 3, 2021](https://medium.com/@plusentllc/broken-link-the-monkins1010-file-is-gone-where-do-we-download-it-now-9c3fd077c079?source=post_page---post_responses--208dbb06905f----0-----------------------------------)

```

Broken link! The monkins1010 file is gone. Where do we download it now?
```

6

1 reply

Reply

[![Chris (Monkins)](https://miro.medium.com/v2/resize:fill:32:32/1*n24HqfQNyTi6zDZejFUmtQ.png)](https://medium.com/@monkins1010?source=post_page---post_responses--208dbb06905f----1-----------------------------------)

[Chris (Monkins)](https://medium.com/@monkins1010?source=post_page---post_responses--208dbb06905f----1-----------------------------------)

[Oct 14, 2020](https://medium.com/@monkins1010/great-guide-84903351b7e0?source=post_page---post_responses--208dbb06905f----1-----------------------------------)

```

Great guide :-)
```

1

1 reply

Reply

[![iam feb](https://miro.medium.com/v2/resize:fill:32:32/0*E_wBZ4c6nL6yicOO)](https://medium.com/@iamfeb14?source=post_page---post_responses--208dbb06905f----2-----------------------------------)

[iam feb](https://medium.com/@iamfeb14?source=post_page---post_responses--208dbb06905f----2-----------------------------------)

[Mar 15, 2021](https://medium.com/@iamfeb14/so-how-can-i-run-ccminer-t-4-7big-endian-only-without-running-all-cores-10ef95a12414?source=post_page---post_responses--208dbb06905f----2-----------------------------------)

```

So how can I run ./ccminer -t(4–7big endian only) without running all cores?
```

2 replies

Reply

## More from Vhater and Verus Coin

[See all from Vhater](https://medium.com/@virhater?source=post_page---author_recirc--208dbb06905f---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--208dbb06905f---------------------------------------)

## Recommended from Medium

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--208dbb06905f---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----208dbb06905f---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----208dbb06905f---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----208dbb06905f---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----208dbb06905f---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----208dbb06905f---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----208dbb06905f---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----208dbb06905f---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----208dbb06905f---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----208dbb06905f---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=w0_qmZVSdobukXrBwYd9dTF7&size=invisible&cb=q615zh7r03fo)