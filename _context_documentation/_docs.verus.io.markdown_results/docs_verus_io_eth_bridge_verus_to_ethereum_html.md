# [\#](https://docs.verus.io/eth-bridge/verus-to-ethereum.html\#how-to-bridge-from-verus-to-ethereum) How to bridge from Verus to Ethereum

Bridge VRSC, ETH, DAI, MKR, Bridge.vETH and any other bridged assets from the Verus blockchain to the Ethereum blockchain.

To bridge from Verus to Ethereum gas fees have to be paid to use the smart contract on the Ethereum side. It can be very expensive.

You can estimate the bridging costs through Verus Mobile or if you are on a computer use the following command: (⚠️ KEEP THE `1` AT THE END OR YOU WILL SEND THE ACTUAL AMOUNT)

```
run sendcurrency "*" '[{\
    "currency":"veth",\
    "exportto":"veth",\
    "address":"0x71518580f36FeCEFfE0721F06bA4703218cD7F63",\
    "amount":1,\
    "refundto":"john doe@"\
}]' 1 0.0001 1

```

Or use:

```
curl --location 'https://YOUR-API-SERVER' \
--header 'content-type: text/plain;' \
--data-raw '{
    "jsonrpc": "1.0",
    "id": "curltext",
    "method": "sendcurrency",
    "params": [\
        "*",\
        [\
            {\
                "currency": "veth",\
                "exportto": "veth",\
                "address": "0x71518580f36FeCEFfE0721F06bA4703218cD7F63",\
                "amount": 1,\
                "refundto": "john doe@"\
            }\
        ],\
        1,\
        0.0001,\
        true\
    ]
}'

```

Then you look for the number after `i5w5MuNik5NtLcYmNzcvaoixooEebB6MGV`, it is the fee you have to pay in VRSC to cross from Verus to Ethereum.

⏱️ The bridging from Verus to Ethereum can take 30 - 60 mins.

Learn how to go from Verus to Ethereum with [Verus Mobile](https://docs.verus.io/eth-bridge/verus-to-ethereum.html#verus-mobile), [Verus Desktop](https://docs.verus.io/eth-bridge/verus-to-ethereum.html#verus-desktop) or [CLI](https://docs.verus.io/eth-bridge/verus-to-ethereum.html#cli).

## [\#](https://docs.verus.io/eth-bridge/verus-to-ethereum.html\#verus-mobile) Verus Mobile

To bridge over from Verus to Ethereum using Verus Mobile you can go to vETH (or DAI.vETH, MKR.vETH, VRSC or other bridged assets). Then click on "Send", then "Convert or Cross-chain", then "Send off-chain".

![image-verus-mobile-bridge](https://docs.verus.io/images/mobile-verus-to-eth.png)

**`Recipient Address`** is your Ethereum address.

**`Select network to send to`** select `vETH`

Then follow the next steps.

## [\#](https://docs.verus.io/eth-bridge/verus-to-ethereum.html\#verus-desktop) Verus Desktop

To bridge over from Verus to Ethereum using Verus Desktop you can press "Convert Currencies" and go to the "Advanced"-tab. Fill in the red highlighted inputs.

![image-verus-desktop-bridge](https://docs.verus.io/images/desktop-verus-to-eth.png)

In the **`From Currency`** you can put `veth`, `dai.veth`, `mkr.veth`, `vrsc` or other bridged assets. Not capital sensitive.

**`Destination System`** is `veth` for Ethereum.

**`Destination Address`** is your Ethereum address.

**`Refund Address`** is your Verus address (R-,i- or VerusID).

## [\#](https://docs.verus.io/eth-bridge/verus-to-ethereum.html\#cli) CLI

To bridge over from Verus to Ethereum using CLI. You can also use this command with the built-in command-line interface in Verus Desktop, under Settings -> Coin Settings, just replace `./verus` with `run`.

```
./verus sendcurrency "*" '[{\
    "currency":"veth",\
    "exportto":"veth",\
    "address":"ETH-ADDRESS",\
    "amount":100,\
    "refundto":"VERUS-ADDRESS"\
}]'

```

**`currency:`** `veth`, `dai.veth`, `mkr.veth`, `vrsc` or other bridged assets. Not capital sensitive.

**`exportto:`** keep as `veth`

**`address:`** your Ethereum address

**`refundto:`** your Verus address (R-,i- or VerusID)

You can also add `"feecurrency":"veth"` to pay the fees in vETH. Standard is in VRSC.

←
[How to bridge from Ethereum to Verus](https://docs.verus.io/eth-bridge/ethereum-to-verus.html)[Export currency to Ethereum (as ERC-20)](https://docs.verus.io/currencies/export-to-eth.html)
→