# [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#api-commands) API commands

All functionality is easily accessible by doing API commands. Here are a few examples:

## [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#converting-defi) Converting (DeFi)

### [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#estimate-conversion-price) Estimate conversion price

The `estimateconversion` API estimates what you might receive for a certain conversion.

Example:

```
./verus -chain=VRSCTEST estimateconversion '{
    "currency":"vrsctest",
    "convertto":"veth",
    "via":"bridge.veth",
    "amount":1000
}'

```

Example:

```
./verus -chain=VRSCTEST estimateconversion '{
    "currency":"vrsctest",
    "convertto":"bridge.veth",
    "amount":500
}'

```

### [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#get-currency-converters) Get currency converters

The `getcurrencyconverters` API retrieves all currencies that have at least 1000 VRSC in reserve, are greater than 10% VRSC reserve ratio, and have all listed currencies as reserves.

Example `btc` and `eth`:

```
./verus -chain=VRSCTEST getcurrencyconverters btc eth

```

### [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#converting-vrsctest-to-basket-currency) Converting VRSCTEST to basket currency

Converting VRSCTEST to a basket currency, VRSC-BTC, using IDs as a funding source:

```
./verus -chain=VRSCTEST sendcurrency "*i" '[{\
    "address":"bob@",\
    "amount":10,\
    "convertto":"VRSC-BTC"\
}]'

```

### [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#converting-vrsctest-to-btc-via-basket-currency) Converting VRSCTEST to BTC via basket currency

Converting VRSCTEST to another reserve, BTC through a basket currency, VRSC-BTC:

```
./verus -chain=VRSCTEST sendcurrency "*" '[{\
    "address":"bob@",\
    "amount":10,\
    "convertto":"BTC",\
    "via":"VRSC-BTC"\
}]'

```

### [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#preconverting) Preconverting

Preconverting to new currency, NEWCOIN, before it is active:

```
./verus -chain=VRSCTEST sendcurrency "*" '[{\
    "address":"alice@",\
    "amount":10,\
    "convertto":"NEWCOIN",\
    "preconvert":true,\
    "refundto":"alice@"\
}]'

```

### [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#converting-vrsctest-cross-chain-to-pbaas-chain) Converting VRSCTEST cross-chain to PBaaS-chain

```
./verus -chain=VRSCTEST sendcurrency "*" '[{\
    "address":"RXLYm4J6qi7yam9zXtkEkRwbvCrnWKGZuv",\
    "amount":10,\
    "convertto":"PBaaSChain",\
    "exportto":"Bridge.PBaaSChain",\
    "via":"Bridge.PBaaSChain"\
}]'

```

### [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#converting-pbaas-chain-to-vrsctest) Converting PBaaS-chain to VRSCTEST

```
./verus -chain=PBaaSChain sendcurrency "*" '[{\
    "address":"RXLYm4J6qi7yam9zXtkEkRwbvCrnWKGZuv",\
    "amount":10,\
    "convertto":"VRSCTEST",\
    "exportto":"VRSCTEST",\
    "via":"Bridge.PBaaSChain"\
}]'

```

## [\#](https://docs.verus.io/sendcurrency/sendcurrency-examples.html\#sending) Sending

Sending VRSCTEST from a single address (bob@) to a single recipient (alice@):

```
./verus -chain=VRSCTEST sendcurrency "bob@" '[{\
    "currency":"vrsctest",\
    "address":"alice@",\
    "amount":10\
}]'

```

Sending VRSCTEST from all private wallet funds to two recipients with friendly-name z-addresses (alice@:private and bob@:private):

```
./verus -chain=VRSCTEST sendcurrency "*Z" '[{\
    "currency":"vrsctest",\
    "address":"alice@:private",\
    "amount":10\
},\
{\
    "currency":"VRSCTEST",\
    "address":"bob@:private",\
    "amount":10\
}]'

```

Sending VRSCTEST cross-chain to PBaaSChain:

```
./verus -chain=VRSCTEST sendcurrency "*" '[{\
    "address":"RXLYm4J6qi7yam9zXtkEkRwbvCrnWKGZuv",\
    "amount":10,\
    "exportto":"Bridge.PBaaSChain"\
}]'

```

←
[Introduction](https://docs.verus.io/sendcurrency/)