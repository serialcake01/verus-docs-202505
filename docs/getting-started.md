# Getting Started with Verus CLI

Welcome to the Verus Command Line Interface (CLI)! This guide will walk you through installing the Verus CLI, setting up the Verus daemon, running your first commands, and basic wallet operations. The CLI is a powerful tool for interacting directly with the Verus network protocol.

## Prerequisites

*   A computer running a supported operating system (Linux, macOS, or Windows).
*   Basic familiarity with using a command line or terminal.
*   An internet connection to download the software and sync the blockchain.

## 1. Installation

You can download the latest pre-compiled Verus CLI binaries for your operating system directly from the official Verus website.

1.  **Download:** Visit the [Verus Wallet Download Page](https://verus.io/wallet/) and download the latest CLI package for your operating system (Linux, macOS, or Windows).
2.  **Verify (Recommended):** It's crucial to verify the integrity and authenticity of the downloaded files. Follow the instructions on the [Verus Signatures Page](https://verus.io/signatures) to verify the download using the provided signature files.
3.  **Extract:** Unpack the downloaded archive (e.g., `.zip` or `.tar.gz`) into a directory where you want to keep the Verus software. For example, you might create a `verus-cli` directory in your home folder.
4.  **Navigate:** Open your terminal or command prompt and navigate into the directory where you extracted the files. For example:
    ```bash
    cd /path/to/your/verus-cli
    ```

Inside the extracted directory, you will find several important files:

*   `verusd`: The Verus daemon. This program runs in the background, connects to the network, and manages the blockchain data.
*   `verus`: The Verus CLI client. This program sends commands to the running `verusd` daemon.
*   `fetch-params`: A script to download the necessary Zcash Sapling parameters. **You must run this once before starting `verusd` for the first time.**
*   `fetch-bootstrap` (Optional): A script to download a recent snapshot of the blockchain to speed up the initial synchronization process.

## 2. Basic Setup

Before you can interact with the Verus network, you need to download the Zcash parameters and start the Verus daemon.

1.  **Fetch Parameters:** Run the `fetch-params` script from your terminal within the `verus-cli` directory:
    ```bash
    ./fetch-params
    ```
    This download may take a few minutes.

2.  **Start the Daemon:** Start the Verus daemon (`verusd`):
    ```bash
    ./verusd
    ```
    The daemon will start syncing the blockchain in the background. This process can take a significant amount of time, depending on your internet connection and computer speed. The blockchain data will be stored in the default data directory:
    *   **Linux:** `~/.komodo/VRSC/`
    *   **macOS:** `~/Library/Application Support/Komodo/VRSC/`
    *   **Windows:** `%AppData%\Komodo\VRSC\`

3.  **(Optional) Bootstrap:** To significantly speed up the initial sync, you can stop the daemon (`./verus stop`, wait a few moments, then check it has stopped with `./verus getinfo` - it should give an error) and run the bootstrap script:
    ```bash
    ./fetch-bootstrap
    ```
    Follow the prompts. Once complete, restart the daemon: `./verusd`.

## 3. Running Your First Commands

With the daemon running and syncing, you can now use the `verus` client to interact with it.

*   **Get General Help:** List all available commands:
    ```bash
    ./verus help
    ```
*   **Get Command-Specific Help:** Get detailed help for a specific command (e.g., `getinfo`):
    ```bash
    ./verus help getinfo
    ```
*   **Check Daemon Status (`getinfo`):** This command provides general information about the daemon's state, including the current block height, connections, and sync status.
    ```bash
    ./verus getinfo
    ```
    *(Sample Output - values will vary)*
    ```json
    {
      "version": 1020250,
      "protocolversion": 170010,
      "VRSCversion": "v1.2.2-4",
      "notarized": 3035000,
      "prevMoMheight": 3034980,
      "notarizedhash": "...",
      "notarizedtxid": "...",
      "notarizedtxid_height": "mempool",
      "KMDnotarized_height": 0,
      "notarized_confirms": 0,
      "blocks": 3035021,
      "timeoffset": 0,
      "tiptime": 1715888888,
      "connections": 8,
      "proxy": "",
      "difficulty": 123456789.12345678,
      "testnet": false,
      "keypoololdest": 1700000000,
      "keypoolsize": 1000,
      "paytxfee": 0.00010000,
      "relayfee": 0.00001000,
      "errors": "",
      "name": "VRSC",
      "p2pport": 27485,
      "rpcport": 27486,
      ...
    }
    ```
    Wait for the `blocks` number to match the current Verus blockchain height (you can check an explorer like [insight.verus.io](https://insight.verus.io/)) before performing wallet operations.

*   **Get Block Count (`getblockcount`):** Get the current number of blocks the daemon has processed.
    ```bash
    ./verus getblockcount
    ```
    *(Sample Output)*
    ```
    3035021
    ```

## 4. Wallet Basics

Your Verus wallet allows you to manage your funds securely. Verus uses two types of addresses:

*   **Transparent Addresses (t-addresses):** Similar to Bitcoin addresses, transactions are public on the blockchain. They typically start with an `R`.
*   **Private Addresses (z-addresses):** Utilize zk-SNARKs (zero-knowledge proofs) to shield transaction details (sender, receiver, amount), providing enhanced privacy. Sapling addresses, starting with `zs`, are the recommended type.

1.  **Create a Transparent Address (`getnewaddress`):**
    ```bash
    ./verus getnewaddress
    ```
    *(Sample Output)*
    ```
    RTZMZHDFSTFQst8XmX2dR4DaH87cEUs3gC
    ```
    This address can be used to receive VRSC or other Verus-based currencies.

2.  **Create a Private (Sapling) Address (`z_getnewaddress`):**
    ```bash
    ./verus z_getnewaddress sapling
    ```
    *(Sample Output)*
    ```
    zs1abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789abc
    ```
    This address provides privacy for your transactions.

3.  **IMPORTANT: Back Up Your Wallet:** Your private keys (which control your funds) are stored in a file called `wallet.dat` located in the Verus data directory mentioned earlier. **It is absolutely critical to back up this file regularly and store it securely.** Losing this file means losing access to your funds associated with the addresses in that wallet.
    *   Use the `backupwallet` command to create a safe copy:
        ```bash
        ./verus backupwallet "my_verus_backup_YYYYMMDD"
        ```
        Replace `my_verus_backup_YYYYMMDD` with a descriptive filename. This command saves the backup to the directory specified by the `-exportdir` option (or the data directory by default). Store this backup file securely offline (e.g., on encrypted USB drives in multiple locations).
    *   You can also use `z_exportwallet` to export *all* keys (transparent and private) into a human-readable format, which should also be backed up securely.

## Next Steps

Congratulations! You've installed the Verus CLI, started the daemon, run basic commands, and created your first addresses.

Explore further:

*   **Core Concepts:** Dive deeper into [VerusID](concepts/verusid.md), [Currencies & DeFi](concepts/currencies-defi.md), and other fundamental Verus features.
*   **Command Reference:** Browse the detailed documentation for every CLI command, grouped by [Category](index.md#command-reference).
*   **Tutorials:** Follow step-by-step guides for common tasks like [Creating a VerusID](tutorials/create-verusid.md) (coming soon!).

Remember to keep your `wallet.dat` file backed up and secure! 