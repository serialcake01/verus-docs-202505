[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2F4605c6d9ed10&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderCollection&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-setup-a-verus-vrsc-staking-server-with-email-alerts-using-ubuntu-and-a-5-digitalocean-4605c6d9ed10&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Homepage](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-setup-a-verus-vrsc-staking-server-with-email-alerts-using-ubuntu-and-a-5-digitalocean-4605c6d9ed10&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

[**Verus Coin**](https://medium.com/veruscoin?source=post_page---publication_nav-4869a79d7e7f-4605c6d9ed10---------------------------------------)

·

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-setup-a-verus-vrsc-staking-server-with-email-alerts-using-ubuntu-and-a-5-digitalocean-4605c6d9ed10&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---publication_nav-4869a79d7e7f-4605c6d9ed10---------------------publication_nav------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:38:38/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_sidebar-4869a79d7e7f-4605c6d9ed10---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

[Follow publication](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fsubscribe%2Fcollection%2Fveruscoin&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-setup-a-verus-vrsc-staking-server-with-email-alerts-using-ubuntu-and-a-5-digitalocean-4605c6d9ed10&collection=Verus+Coin&collectionId=4869a79d7e7f&source=post_page---post_publication_sidebar-4869a79d7e7f-4605c6d9ed10---------------------post_publication_sidebar------------------)

# How to Setup a Verus (VRSC) Staking Server with Email Alerts Using Ubuntu and a $5 DigitalOcean Droplet

## Step by Step Guide to Setting Up a DigitalOcean Droplet Server to Stake Verus VRSC Cryptocurrency Using Ubuntu Linux with Automated Email Alerts and Wallet Backups

[![Oliver](https://miro.medium.com/v2/resize:fill:32:32/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---byline--4605c6d9ed10---------------------------------------)

[Oliver](https://medium.com/@OliverWestbrook?source=post_page---byline--4605c6d9ed10---------------------------------------)

Follow

17 min read

·

Sep 17, 2018

251

[Listen](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2Fplans%3Fdimension%3Dpost_audio_button%26postId%3D4605c6d9ed10&operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-setup-a-verus-vrsc-staking-server-with-email-alerts-using-ubuntu-and-a-5-digitalocean-4605c6d9ed10&source=---header_actions--4605c6d9ed10---------------------post_audio_button------------------)

Share

![](https://miro.medium.com/v2/resize:fit:700/1*fk3nxhMnmbcPz6inAkUyyw.png)

**_UPDATE Oct 31, 2018:_**

Instructions for [Sapling and Cheat Catcher](https://medium.com/veruscoin/veruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c) are now included in this guide!

# What is Verus?

Verus is a blockchain forked from Komodo, the world’s most secure privacy blockchain. The Verus coin, VRSC, is a CPU Mineable coin which utilizes VerusHash, the fastest cryptographic hash algorithm in the world. It can be mined on x64 CPUs which has significantly leveled the playing field with GPUs.

Because Verus is a fork of [Komodo](https://komodoplatform.com/), it comes with the same first in class security features, such as dPoW…a form of Proof of Work that essentially “backs up” the blockchain to the most secure blockchain in the world, presently Bitcoin. However, chains forked from Komodo can notarize to Komodo’s blockchain. This allows them double the protection against attacks while giving them the effect of instant security, as if they were as mature as the blockchains they are backing up to (notarizing to).

Also a part of the package with Komodo comes zk-SNARK privacy. Komodo was a fork from ZCash and has the same level of privacy built into its blockchain. You can learn more about zk-SNARK and zCash [here.](https://z.cash/)

Unlike Komodo, Verus implements a combination of PoW and PoS (Proof of Work and Proof of Stake, respectively). This is a 50/50 split in which half the blocks are mined by mining and the other half by staking. Mining and Staking is done using a modified version of the Agama wallet by the Verus team. There is a GUI (graphical) wallet and a CLI (command line) wallet. Mining can also be done via pools and using ccminer software modified to work with Verus.

Staking is as simple as holding a balance in an online wallet. Mining can be done using a modern CPU or GPU and done directly (where winning a block gives you the entire block reward) or through a pool.

You can read more and learn more about [Verus at their official site here](https://veruscoin.io/) or join their [Discord](https://discord.gg/VRKMP2S)!

It’s a very fun, development rich, and ambitious project. In my opinion one of the few projects I see going the long run, with legitimate, ingenuous, and innovative development and strong roots in some of the most influential and talented developers and leaders in cryptocurrency/blockchain today…including Lead Developer Michael J Toutonghi, Microsoft’s former VP and Technical Fellow and the founder and architect of the .Net platform.

# Before You Begin

Before getting into the steps, it’s a good idea to join the [Verus community](https://veruscoin.io/) and really educate yourself in their FAQ in [Discord](https://discord.gg/VRKMP2S), read the Vision Paper at least…if not the Whitepaper, and just overall familiarize yourself with the project and how mining and staking work.

In this guide I’m assuming you already know the basics about how staking works, but I may mention a few of these basics along the way for clarification or as a reminder. While you don’t have to be an expert at command line or linux to use this guide or follow the steps, just keep in mind that you should always test before doing something major. And always make backups. I’ll mention this again along the way.

Okay, let’s get started!

# Part One — Setup Accounts

It’s important to have a highly secured and encrypted email, that no one knows, which you’ll be able to use for backing up your wallet file and to setup all other secure accounts for your Verus staking tasks.

## [ProtonMail](https://protonmail.com/)

Personally I recommend using ProtonMail and setting the encryption to the Highest while setting up your account. Do this from a device you know for certain is secure, not a public or shared computer.

[ProtonMail](https://protonmail.com/) has a Two Factor Authentication option, which I recommend turning on. You’ll need to use either Google Authenticator or Authy for generating 2FA codes. Make sure you secure this app! If you use Authy make sure to password protect the app and ensure that “Allow Multi-device” is disabled for maximum security.

## [Digital Ocean](https://m.do.co/c/13c092042583)

Next, you’ll need a [DigitalOcean account](https://m.do.co/c/13c092042583) in which we’ll be setting up the “Droplet” server. I recommend using the new secure email you setup and once you’ve got your account setup, turn 2FA on within your DigitalOcean settings as well.

DigitalOcean Droplets are VM Servers that are fast and easy to deploy and can be scaled up or down. In this guide I’m showing you how to setup a very basic, small (1vCPU/1GB RAM) droplet which is only $5 a month.

Because it’s such a small server with very limited resources, there are a few things we’ll be doing which a “normal” server would not require. [**Latest Sapling activation makes it a breeze to use a minimal server tasks, such as shielding and private transactions, which used to take several minutes…now are near 1 second and even faster!**](https://medium.com/veruscoin/verus-coin-0-4-0-release-notes-e7eb35772bff)

Now that you have a new shiny email and Digital Ocean account, everything is secured, it’s time to setup your droplet.

# Part Two — Create The Droplet

## Step 1

From the top right of your dashboard in DigitalOcean, click the Create button and then select “Droplets”

![](https://miro.medium.com/v2/resize:fit:477/1*f77FC6cPHpFuEFaJpZfnjA.png)

## Step 2

At the next screen click the down arrow under the Ubuntu block and select 16.04.4 x64 to use the Ubuntu 16.04 Server Image

![](https://miro.medium.com/v2/resize:fit:565/1*WE_GaNoO3u2hwLPYrpojqw.png)

## Step 3

Scroll down and under the “Choose a size” section, select the top size under Standard Droplets which includes 1GB of RAM, 1vCPU and 25 GB of disk space

![](https://miro.medium.com/v2/resize:fit:663/1*ML-Nuqocf9CIMlvAWPe7Dg.png)

## Step 4

Next, choose a region for the data-center your droplet will be installed in. For Verus I recommend Frankfurt or a similar region that is close to the Verus nodes. A ping from Frankfurt to a node IP is 40ms when compared to SFO at about 180ms

![](https://miro.medium.com/v2/resize:fit:700/1*PeWE4mT8rLuOhd35zrLtEA.png)

## Step 5

Next create a hostname for your new droplet. This will be the hostname to the server itself internally. You can also setup Tags if you plan on having many Droplets down the road and want an easy way to organize and find the one you’re looking to do maintenance on, etc.

Then simply click Create!

![](https://miro.medium.com/v2/resize:fit:700/1*6g8Bra7OYSUj5ikwhQ2Y0A.png)

## Step 6

To see and manage your Droplet(s), when you login simply click “Droplets” from the left menu bar under Manage. Your Droplets will show up to the right and you can see a quick status or click on one for more management options

![](https://miro.medium.com/v2/resize:fit:678/1*RLFjJAvC77_VGn-MjGlYEw.png)

Now that you’ve created a Droplet, you will receive an email from Digital Ocean containing the IP address and root password for accessing your new droplet. You can also access the Droplet from the Management screen in your Digital Ocean account by clicking the Droplet, then clicking Console in the upper right. This opens a new console window, which looks just like a terminal window.

# Part Three — Configure The Droplet

Now that the droplet is setup and online, you’ll want to configure it for use as your Verus staking server. Following are my recommendations and in my opinion, the best practices.

## Step 1 — New Root Password

Set a new root password straight away! To do this, login to your new droplet using the Console from the Management within your Digital Ocean account using the root password emailed to you. Your droplet will prompt you to reset your password (create a new one). Use a highly secure and complex password that you do not use elsewhere.

## Step 2 — Setup SSH

Next, setup SSH to use your SSH Key for logging into your Droplet (instead of password authentication). If you don’t know how, follow this guide: [How to Add SSH Keys to Your Droplet](https://www.digitalocean.com/docs/droplets/how-to/add-ssh-keys/).

Before removing root SSH privilege, follow the next step to create a new account in your Droplet.

## Step 3 — Setup New Secure User Account

Next, you need to setup a new user account in the Droplet which will run Verus and be your access to the system, so root is not used for access.

Here are the steps to create a new user account, give it “sudo” privileges, test it and disable root SSH:

1. You’ll create the new user account with: `adduser username` make sure to change username to the username you want to use for this account. You’ll have prompts for Full Name, etc…but the only important thing is setting the secure password for this account. Make it as secure as your root password!
2. After the user account is created, give it sudo privileges with:

`usermod -aG sudo username` again, replace username with the username you created.
3. Next, log off the server and test that you can SSH using the new user account.
4. If it went well, it will login fine and you can now remove root SSH privilege:

\- Open the sshd\_config file as sudo to edit:

`sudo nano /etc/ssh/sshd_config`

\- Under the #Authentication section find the line “PermitRootLogin” and change the “yes” to a “no”

\- Save the changes with CTRL+O and exit nano with CTRL+X

Restart your server with: `sudo reboot`

## Step 4 — Setup Larger Swap

Although latest Verus Sapling upgrade makes shielding screaming fast and non-intensive on resources, to make this minimal system a little more “robust”, I recommend you give it a good sized Swap, as it only has 1GB RAM. We’ll set a 4GB Swap.

Here’s how to do that, very simple and no reboot required.

1. First we’ll create the Swap file with: `sudo fallocate -l 4G /swapfile`
2. Now that it’s created, we need to enable it by doing a couple things:

\- First set permissions to root only: `sudo chmod 600 /swapfile`

\- Next, mark the file as swap with: `sudo mkswap /swapfile`

\- Last, we’ll enable the file with: `sudo swapon /swapfile`
3. The Swap is on and we need to make it permanent, so it’s used after any reboot or new session. To do this, we need to edit the /etc/fstab file, which can be dangerous so first we’ll back it up. Do the following:

\- Backup the /etc/fstab file with: `sudo cp /etc/fstab /etc/fstab.bk`

\- Now we’ll add the swap info to /etc/fstab with the following:

`echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab`
4. Now, we need to edit a couple Swap settings for best performance. You can change these and test different settings, here are my settings that seem to work pretty well.

\- First is Swappiness, a Desktop usually uses a higher setting and a Server a lower, mine is set to 40. This is set by editing the /etc/sysctl.conf file: `sudo nano /etc/sysctl.conf`

At the end of the file, add the following: `vm.swappiness=40`

\- Next is Cache Pressure, a Server can do with a lower number, for example 50. This is also added to the /etc/sysctl.conf file at the end, first edit the file with `sudo nano /etc/sysctl.conf` and add the following to the end of the file: `vm.vfs_cache_pressure=50`
5. After these settings are applied and the file saved, reboot your server and verify after the reboot that your swap is on and showing as 4GB by issuing the following command: `free -m` which will output showing your RAM and SWAP.

# Part Four — Install Verus and Begin Staking

## Step 1— Setup Server Environment

We will be simply unpacking a pre-built package of Verus on this system but still need a few dependencies and I recommend installing the tools necessary to build in the future, should you need these.

1. Update with `sudo apt update`
2. Install tools and dependencies with:

`sudo apt --yes install build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python python-zmq zlib1g-dev wget libcurl4-openssl-dev bsdmainutils automake curl`
3. Next we’ll setup email functionality for your server.

\- Install mailutils with: `sudo apt install mailutils` During this install you’ll be prompted a few times, just choose the defaults on each screen.

\- Edit your /etc/postfix/main.cf file to enable TLS Encryption and set localhost. Edit the file with: `sudo nano /etc/postfix/main.cf` Locate the TLS section of the file and add the following lines:

`smtp_tls_security_level=encrypt
` `smtp_tls_loglevel = 1`

\- Now, near the end of the file, locate the line “ inet\_interfaces = any” and change it to `inet_interfaces = localhost`

\- Finally, restart your postfix service with:

`sudo systemctl restart postfix`

**WARNING**: While you may want to use email for alerts, such as telling you when a new block is mined or alerting if the services goes down (I have scripts below that will do these things) only use email for backing up your wallet.dat file if you know what you’re doing and understand how to ensure your emails are secure.

## Step 2: Install Verus

Okay, now that you’ve installed the build tools and dependencies, it’s time to get Verus Coin. If you followed the previous steps precisely, things should run smoothly from this point, but if you run into any issues feel free to hit me up on the [Verus Discord](https://discord.gg/VRKMP2S). My Discord ID is JohnWestbrook#1979.

**Get the latest version of Verus Coin for Linux:**

Logged in as your new secure user account, start in your Home folder with `cd ~` and download the latest version of VerusCoin. Using a browser you can get the exact download like for Linux at [VerusCoin Official GitHub](https://github.com/VerusCoin/VerusCoin/releases/latest). I’ll try to keep this guide updated.

**The latest CLI version as of now (Jun 26, 2019) is 0.5.7–2**

You can download it in your server by issuing the following command (change to the most recent version if necessary):

```
wget https://github.com/VerusCoin/VerusCoin/releases/download/v0.5.7-2/Verus-CLI-Linux-v0.5.7-2.tar.gz
```

Unpack the tar file with the following command: `tar -xvf Verus-CLI-Linux-v0.5.7-2.tar.gz`

VerusCoin is now unpacked and inside the `verus-cli` directory within your home folder.

Now we need to download the Zcash Params. This may take several minutes. To do so issue the following command: `./verus-cli/fetch-params`

## Step 3: Start Verus and Allow Sync Time

You’re now ready to start Verus! The first time you start it may take time to sync up. Optionally you can start with the Bootstrap.

To do so, follow these simple steps…

**Steps to BootStrap Initial Verus Run**

1: Change to your Home folder with: `cd ~`

2: Download the bootstrap with:

```
wget https://bootstrap.0x03.services/veruscoin/VRSC-bootstrap.tar.gz
```

3: Next, create the VerusCoin folder with:

```
mkdir -p .komodo/VRSC
```

4: Unpack the tar into the VerusCoin folder with:

```
tar -xvf VRSC-bootstrap.tar.gz -C .komodo/VRSC/
```

Now you are ready to launch Verus Coin and wait for the initial sync to complete.

To simplify this, use “screen”, so you can log back in over SSH and see the status. Your system should come with screen installed, if not simply install it with `sudo apt install screen`

Now, from your Home folder launch screen with: `screen`

This will start a new terminal inside your SSH session to which you can reattach later.

**Now launch Verus daemon for the first time with:**

```
./verus-cli/verusd -mint
```

You can safely close your SSH terminal window. When you return to check it later, reattach to the screen with: `screen -r`

You may want to skip setting up scripts and email alerts. If you do, be sure to follow the tasks in “Scripts to Create and Tasks to Take AFTER Verus Syncs”.

## Step 4: Setup Scripts and Email Alerts

This is, of course, optional but it makes your life easier! The first thing I would do with this is create a text document where you can keep notes on different commands you’ll need to issue down the road, commands you may not want to script.

For example, to unshield coins (send from your zsAddr, the new Sapling Z address, to your tAddr) you may want to issue the command each time so you can be custom with your amount as well as wallet addresses. Shielding, however, can be done with a single command for All coinbases that need shielding, so it’s easy to script.

You can also store your t and zs addresses in that document, so you can easily copy and paste whenever necessary. I have a spreadsheet with calculations and all sorts of interesting data I like to track, so you may go that route…or just a simple text file will do.

For scripts that involve emailing you, you’ll need to construct your “From” email address with a specific format which involves your IP. Here’s how it works: youruser@Your.IP.address.reversed.in-addr.arpa

For example, let’s say your Droplet server IP is 55.44.33.22. The correct “From” email would be: youruser@22.33.44.55.in-addr.arpa

You’ll see this in the script, just change the IP numbers to your IP reversed and the username to yours.

Some of the scripts below are only able to be created after Verus has fully sync’d up, since you need to generate wallet addresses, etc. I’ll notate which one’s those are.

These scripts assume you have VerusCoin in your Home folder and that you are running the scripts from your Home folder. Also, please note with each new script you’ll want to make it executable with `chmod +x scriptname.sh` replacing the name of course, to the name of your script. You can then run the script with ./scriptname.sh

## Scripts You Can Create Before Verus Syncs

**Script 1 — Check that Verus is Running**

Create a script called checkverus.sh using nano, and put the following in, changing the reverse IP, username and protonmail email to yours:

```
#!/bin/bashif pgrep -x "komodod" > /dev/null
then
 TRUE="1"
else
 echo "Your Miner Has Stopped Staking!!! HELP!!" | mail -s "OUTAGE: MinerHostName" -a "From: youruser@22.33.44.55.in-addr.arpa" you@protonmail.com
fi
```

**Script 2 — Check for New Blocks Mined**

Create a file called txHistory.txt using nano and enter a value of -2, then save and exit. Now create a script called stakingstatus.sh using nano and put in the following, being careful to change the /home/youruser portions to your own username along with the email from, reverse IP and protonmail…and your server hostname for the Subject line of course:

```
#!/bin/bashhistoricalcount=$(cat /home/youruser/txHistory.txt)
livecount=$(/home/youruser/verus-cli/verus getwalletinfo | grep txcount | sed 's/[0-9]*//g')if (($livecount > $historicalcount))
then
 echo $livecount > /home/youruser/txHistory.txt
 echo "Your Miner Has Staked More Coinage! Woot!" | mail -s "YourHostName Just Staked Another Block" -a "From: youruser@22.33.44.55.in-addr.arpa" you@protonmail.com
 /home/youruser/backup.sh
else
 NOCHANGE="1"
fi
```

This will, on first run, compare to -2 and replace it with 0 and backup the wallet…but we’ll do that later. Also, as a note, anytime there is a new transaction in your wallet this script will initiate, since it looks at tx count of the walletinfo. I’m working on a better way to do this, so you may be alerts that a block is mined when it was you doing a shield or unshield for example.

**Script 3 — Wallet Backups**

This script is optional, as mentioned before. For this script, create a file called backup.sh using nano and enter the code below. Be sure to change the file path /home/youruser to your username and of course the reverse IP, username, hostname, and protonmail to yours:

```
echo "Attached Backup" | mail -s "YourHostName Backup" -A /home/youruser/.komodo/VRSC/wallet.dat -a "From: youruser@22.33.44.55.in-addr.arpa" you@protonmail.com
```

## Scripts to Create and Tasks to Take AFTER Verus Syncs

All tasks should be done from within your Home folder and this is where to store all your scripts as well.

**Task 1 — Setup Crontab for Above Scripts**

The above scripts can run automatically and alert you, run backups, etc while your sever is mining. You can set your own cronjob schedule, but I’ve put a suggested entry below.

To edit cron, issue the command: `crontab -e`

Then at the bottom of the file put the following, changing the username to yours:

```
*/5 * * * * /home/youruser/stakingstatus.sh
0 * * * * /home/youruser/checkverus.sh
0 12 * * * /home/youruser/backup.sh
```

**Task 2— Find Your New Transparent Address**

```
./verus-cli/verus getaddressesbyaccount ""
```

This will output your Transparent Wallet address. If you are importing a wallet, disregard.

**Task 3— Generate a New zs Sapling Address**

```
./verus-cli/verus z_getnewaddress sapling
```

This will output a new zs Address (Sapling type shielded address which begins with “zs”) for use with Shielding and Unshielding your coinbases you mine, and for collecting any Cheats caught by the Cheat Catcher.

**Task 4 — How to Enable** [**Cheat Catcher**](https://medium.com/veruscoin/veruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c) **on Verus Launch w/ Staking**

You must include the parameter `-cheatcatcher=zsaddr` (where zsaddr is your zs address you generated) when launching the daemon. So for example, to launch the Verus daemon to Stake and Cheat Catch, you would launch it as:

`./verus-cli/verusd -mint -cheatcatcher=zsaddr`

**Script 1 — Shield Staked Coins**

Create a new script using nano (maybe call it shield.sh) and enter the following, changing the zsAddr to your new zsAddress you generated in Task 3 above:

```
./verus-cli/verus z_shieldcoinbase "*" zsAddr
```

**Script 2 — View Your zs Addr Balance**

You’ll see the zsAddr balance change once the shielding has finished. Create a new script using nano and enter the following, changing zsAddr to your new zsAddress:

```
./verus-cli/verus z_getbalance zsAddr
```

**Unshield Coins Command Line**

To unshield you’ll want to issue the command so you can control the amount of coins. There is a way to create variables in a script but I also like verifying addresses are correct, etc.

To unshield coins, you’ll issue the following command, putting your zsAddr and tAddr and the correct number of coins for the amount:

```
./verus-cli/verus z_sendmany "zsAddr" "[{\"address\": \"transparentAddr\", \"amount\":500}]"
```

## Step 5: Begin Staking!

Again, you will start the daemon with:

`./verus-cli/verusd -mint -cheatcatcher=zsaddr` where “zsaddr” is your “zs” Sapling address you generated above in Task 3.

You are now staking and your node is looking for cheats to catch!

**_NOTE:_** Do not use the same wallet on more than one server to stake the same coins. That is considered cheating and any rewards staked while cheating can be taken by other Cheat Catchers on the network. [Learn more here](https://medium.com/veruscoin/veruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c).

If you are starting a new wallet on this Droplet, you’ll simply want to send VRSC to your new Transparent Wallet address in sends of 500 or fewer coins. This is ideal for staking as it will create a new UTXO for each send to the wallet. After 150 confirmations the coins will be staking!

With the scripts setup properly you’ll receive an email every time a new block is mined. You can then login and shield it, unshield it, etc. If you setup the backup script, it will also email your wallet.dat file to your secure protonmail account every time a new block is mined.

If you want to use an existing wallet for staking, you would do all the above steps up until waiting for the system to sync. Then after it syncs, you’d stop verus with `./verus-cli/verus stop` and replace the wallet.dat file located in the .komodo/VRSC folder with your wallet.dat file. Then start the daemon again and you’ll see your balance.

# Final Notes

As I mentioned above, having UTXOs of 500 or less is ideal…and really closer to 500 is better for staking. You can see all your UTXOs at any time by issuing the command: `./verus-cli/verus listunspent`

On that note, because a block reward is 48 coins presently and soon to be halved, it can benefit you to shield several blocks before unshielding a larger sum. For example, you can shield each block as it arrives, then check your zAddr balance and say when it’s near 400 coins you can unshield all in a single transaction…which in turn creates a UTXO of that size which is more ideal for staking than, say, 47.999 coins.

I hope this guide is found to be helpful and easy to follow and if you have any questions please feel free to connect with me in the Verus Discord server! If there’s any issue with the above info I’ll make updates as necessary. Thanks and happy Staking!!

# Get involved in Verus and the Verus community

**Visit** [**https://veruscoin.io**](https://veruscoin.io/) **Discord** [**https://discord.gg/VRKMP2S**](https://discord.gg/VRKMP2S)

# Resources

- [**VerusCoin Successfully Activates Sapling with New Improvements to Verus Wallet, Electrum Server and Pool Software**](https://medium.com/veruscoin/veruscoin-successfully-activates-sapling-with-new-improvements-to-verus-wallet-electrum-server-35b44d8bad5c)
- [**How to Update or Install Verus GUI Enhanced Agama Wallet**](https://medium.com/veruscoin/how-to-update-veruscoin-graphical-gui-wallet-to-0-4-0a-for-linux-686fc7a5b6e7)
- [**Verus Coin v0.4.0 Official Release Notes**](https://medium.com/veruscoin/verus-coin-0-4-0-release-notes-e7eb35772bff)
- [**How Verus Solved Nothing at Stake and Weak Subjectivity for Proof of Work**](https://medium.com/@EthAdvisor/how-verus-solved-nothing-at-stake-and-weak-subjectivity-proof-of-stake-problems-b4dd6a85086e)
- [**Everything You Need to Know About the Zcash Sapling Upgrade**](https://medium.com/p/b5787cc7b68e)
- [**Ben’s Pocket Guide to VerusCoin for Dummies and Smart People**](https://medium.com/@benohanlon/a-pocket-guide-to-verus-coin-f0c86e976c33)
- [**Komodo Ecosystem Spotlight: Verus Coin**](https://komodoplatform.com/komodo-ecosystem-spotlight-verus/)
- [**Komodo AMA Spotlights VerusCoin**](https://www.reddit.com/r/komodoplatform/comments/9hphen/ama_monday_24th_september_komodos_first_ecosystem/)
- [**Formation of The Verus Coin Foundation with a Vision of PBaaS**](https://medium.com/@veruscoin/announcing-formation-of-the-verus-coin-foundation-with-a-vision-of-public-blockchains-as-a-service-fb5470143fff)

## About the Author

John Westbrook is a blockchain consultant and has been involved in blockchain technology for over 2 years as an educator, investor and day trader.

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

[Digitalocean](https://medium.com/tag/digitalocean?source=post_page-----4605c6d9ed10---------------------------------------)

[Verus](https://medium.com/tag/verus?source=post_page-----4605c6d9ed10---------------------------------------)

[Veruscoin](https://medium.com/tag/veruscoin?source=post_page-----4605c6d9ed10---------------------------------------)

[Komodo](https://medium.com/tag/komodo?source=post_page-----4605c6d9ed10---------------------------------------)

[Mining](https://medium.com/tag/mining?source=post_page-----4605c6d9ed10---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:48:48/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--4605c6d9ed10---------------------------------------)

[![Verus Coin](https://miro.medium.com/v2/resize:fill:64:64/1*icQiqanl8-WwUHzWxLgNkg.png)](https://medium.com/veruscoin?source=post_page---post_publication_info--4605c6d9ed10---------------------------------------)

Follow

[**Published in Verus Coin**](https://medium.com/veruscoin?source=post_page---post_publication_info--4605c6d9ed10---------------------------------------)

[440 Followers](https://medium.com/veruscoin/followers?source=post_page---post_publication_info--4605c6d9ed10---------------------------------------)

· [Last published Nov 29, 2024](https://medium.com/veruscoin/introducing-vyield-curve-stablecoin-yield-comes-to-verus-cd51f5362752?source=post_page---post_publication_info--4605c6d9ed10---------------------------------------)

Verus Community Blockchain Project — Truth and Privacy for All

Follow

[![Oliver](https://miro.medium.com/v2/resize:fill:48:48/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--4605c6d9ed10---------------------------------------)

[![Oliver](https://miro.medium.com/v2/resize:fill:64:64/1*wm5ZpK6OyeL5runF5qgGOg@2x.jpeg)](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--4605c6d9ed10---------------------------------------)

Follow

[**Written by Oliver**](https://medium.com/@OliverWestbrook?source=post_page---post_author_info--4605c6d9ed10---------------------------------------)

[252 Followers](https://medium.com/@OliverWestbrook/followers?source=post_page---post_author_info--4605c6d9ed10---------------------------------------)

· [20 Following](https://medium.com/@OliverWestbrook/following?source=post_page---post_author_info--4605c6d9ed10---------------------------------------)

coding; blockchain; freewriting;

Follow

## No responses yet

![](https://miro.medium.com/v2/resize:fill:32:32/1*dmbNkD5D-u45r44go_cf0g.png)

Write a response

[What are your thoughts?](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fveruscoin%2Fhow-to-setup-a-verus-vrsc-staking-server-with-email-alerts-using-ubuntu-and-a-5-digitalocean-4605c6d9ed10&source=---post_responses--4605c6d9ed10---------------------respond_sidebar------------------)

Cancel

Respond

## More from Oliver and Verus Coin

![How to Start CPU Mining Verus Coin VRSC from Your Computer  in Under 5 Minutes](https://miro.medium.com/v2/resize:fit:679/1*hPK9_NibFVInWPsgIIxvzg.png)

![Verus: Profit Generating Protocol for Miners and Stakers](https://miro.medium.com/v2/resize:fit:679/1*mM9OwDNz-t2F5ZA2N1o1Jw.png)

![Verus Beginner’s Staking Guide](https://miro.medium.com/v2/resize:fit:679/1*GHpZSHyuVza6Bnu5O1rN2Q.png)

![How to Earn VRSC Mining with Your CPU and Staking Mined Coins!](https://miro.medium.com/v2/resize:fit:679/1*MmYDDKqG3ExrvJ97APB0Gg.png)

[See all from Oliver](https://medium.com/@OliverWestbrook?source=post_page---author_recirc--4605c6d9ed10---------------------------------------)

[See all from Verus Coin](https://medium.com/veruscoin?source=post_page---author_recirc--4605c6d9ed10---------------------------------------)

## Recommended from Medium

![This new IDE from Google is an absolute game changer](https://miro.medium.com/v2/resize:fit:679/1*f-1HQQng85tbA7kwgECqoQ.png)

![You Can Make Money With AI Without Quitting Your Job](https://miro.medium.com/v2/resize:fit:679/1*kronPqvBjIJFWp2ANVlpwA.jpeg)

![An abstract illustration of a vast, dreamy desert landscape under a starry night sky. A small figure sits by a campfire, dwarfed by the large silhouette of a serene face blending into the sand dunes, creating a surreal and contemplative atmosphere.](https://miro.medium.com/v2/resize:fit:679/0*hIyZn7taxr6gJqmC.jpg)

![The Only 7 Signs of AI Writing You Need to Remove in Your Text](https://miro.medium.com/v2/resize:fit:679/0*Eqt9JfmRm3AQOA3U)

![After Age 40, You Need to Stop Doing These Morning Habits — That Speed Up Aging](https://miro.medium.com/v2/resize:fit:679/0*VvRmJCLAZSb94IxC)

![I worked for Pope Francis. Here is what he was really like.](https://miro.medium.com/v2/resize:fit:679/1*KJXUZtG1xEstwM9FA2gRoQ.jpeg)

[See more recommendations](https://medium.com/?source=post_page---read_next_recirc--4605c6d9ed10---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----4605c6d9ed10---------------------------------------)

[Status](https://medium.statuspage.io/?source=post_page-----4605c6d9ed10---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----4605c6d9ed10---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----4605c6d9ed10---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----4605c6d9ed10---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----4605c6d9ed10---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----4605c6d9ed10---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----4605c6d9ed10---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----4605c6d9ed10---------------------------------------)

[iframe](https://www.google.com/recaptcha/enterprise/anchor?ar=1&k=6Le-uGgpAAAAAPprRaokM8AKthQ9KNGdoxaGUvVp&co=aHR0cHM6Ly9tZWRpdW0uY29tOjQ0Mw..&hl=en&v=Hi8UmRMnhdOBM3IuViTkapUP&size=invisible&cb=rqy967d05r76)