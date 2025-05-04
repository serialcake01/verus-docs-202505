# [\#](https://monkins1010.github.io/verustestnet/getting-started/\#running-private-testnet) Running private testnet

In

[Tutorials](https://monkins1010.github.io/categories/tutorials/)

This guide will show you how to connect to your own personal vrsctest container so you can run tests. Akin to using ganache.

## [\#](https://monkins1010.github.io/verustestnet/getting-started/\#chainify) chainify

This framework acts as a Verus SDK, e.g. if you wanted to build a light wallet you can do things like:

```javascript

import { setupWallet } from '@liquality/wallet-core';
import defaultOptions from '@liquality/wallet-core/dist/src/walletOptions/defaultOptions'; // Default options

const wallet = setupWallet({
  ...defaultOptions,
});

(async () => {
  await wallet.dispatch.createWallet({
    key: 'satoshi',
    mnemonic: 'never gonna give you up never gonna let you down never gonna',
    imported: true,
  });
  await wallet.dispatch.unlockWallet({ key: 'satoshi' });
  await wallet.dispatch.changeActiveNetwork({ network: 'mainnet' });
  console.log(wallet.state); // State will include default accounts
})();

```

In the background `wallet-cote` uses chainify which is an abrstaction layer for blockchains.

When Verus is listed as a default wallet it would import it as an option,

## [\#](https://monkins1010.github.io/verustestnet/getting-started/\#docker-running-a-stand-alone-connection) Docker running a stand alone connection

To run the docker container do:

```bash

git clone https://github.com/monkins1010/chainify.git
cd chainify
yarn install

```

Then to run the docker (which is two seperte verus nodes connected to each other, one a slave and one a miner).

##### Please install docker first

Please note that docker should be installed first to be able to run `docker-compose`

```bash

docker-compose -f test/integration/environment/verus/docker-compose.yaml up -d --force-recreate --renew-anon-volumes

```

Now you can talk to your container using

```bash

curl --user user39205:pass7d37f4a9708073faecdeae6d522bdf6917 --data-binary '{"jsonrpc":"1.0","id":"curltext","method":"getwalletinfo","params":[]}' -H 'content-type:text/plain;' http://localhost:25789/

```

put ` | jq` on the end if you want it formatted (in linux).

Now this container is running you can develop applications and connect to it e.g.

```javascript

import { VerusdRpcInterface } from '../../index'

const { RPC_USER, RPC_PASSWORD, RPC_PORT } = process.env;

  const verusd = new VerusdRpcInterface("iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq", `http://localhost:${RPC_PORT}`, {
    auth: {
      username: RPC_USER,
      password: RPC_PASSWORD
    },
  });

const info = await verusd.getInfo()

```

[docker](https://monkins1010.github.io/tags/docker/)[testnet](https://monkins1010.github.io/tags/testnet/)

Contents

- [chainify](https://monkins1010.github.io/verustestnet/getting-started/#chainify)
- [Docker running a stand alone connection](https://monkins1010.github.io/verustestnet/getting-started/#docker-running-a-stand-alone-connection)