# [\#](https://docs.verus.io/currencies/mapping-1:1-eth.html\#launch-currency-with-1-1-mapping-of-erc-20) Launch currency with 1:1 mapping of ERC-20

When defining a currency it can be mapped to an ERC-20 1:1. The currency on Verus and the ERC-20 on Ethereum are then always interchangeable 1 to 1. [More on the Verus-Ethereum Bridge.](https://docs.verus.io/eth-bridge/)

↔️ Verus-Ethereum Bridge 👨‍🔧 For Testnet!

[👉 Access the Verus-Ethereum Testnet Bridge(opens new window)](https://ethbridge.verustest.net/) (⚠️ Goerli testnet)

↔️ Verus-Ethereum Bridge ✅ For Mainnet!

[👉 Access the Verus-Ethereum Mainnet Bridge(opens new window)](https://eth.verusbridge.io/)

Need help setting up a currency launch? 🤔

[👉 Go to the Verus Discord #pbaas-development channel. The community is happy to assist!(opens new window)](https://www.verus.io/discord)

### [\#](https://docs.verus.io/currencies/mapping-1:1-eth.html\#defining-the-currency) Defining the currency

To create a currency of a specific name, we need a VerusID of the same name. The controller of this VerusID is the only one who can create a currency of that name, and we can only do so once.

The cost for a VerusID on the Verus is `100 VRSC` (or 80 when using a referral). The cost to launch a currency is `200 VRSC`. Before launching we need to have enough VRSC in the namespace VerusID.

You can also use a .vETH subID. The cost to register a .vETH subID is an amount of Bridge.vETH (0.01 vETH worth).

In our example we have a namespace `MyUSDC` with which we want to launch a currency that is mapped to the Ethereum `USDC` ERC-20 (on Goerli testnet, [see contract address(opens new window)](https://goerli.etherscan.io/address/0x98339D8C260052B7ad81c28c16C0b98420f2B46a)).

Below is the command to map a currency 1:1 to an ERC-20 on Ethereum. The `address` field is the Ethereum smart contract address of the ERC-20 we want to map to.

```
./verus -chain=VRSCTEST definecurrency '{
    "name":"MyUSDC",
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

After we put in the command, we get returned a HEX. We use this HEX to launch the currency on the network. Use the command below to launch the currency:

```
./verus -chain=VRSCTEST sendrawtransaction "HEX"

```

Now we have to wait a few blocks for the currency to be available on the network.

### [\#](https://docs.verus.io/currencies/mapping-1:1-eth.html\#export-to-ethereum) Export to Ethereum

The last step is to export the currency to Ethereum so we can see it there too. [👉 Read it here](https://docs.verus.io/currencies/export-to-eth/)

←
[Launch currencies](https://docs.verus.io/currencies/launch-currency.html)[Export currency to Ethereum (as ERC-20)](https://docs.verus.io/currencies/export-to-eth.html)
→