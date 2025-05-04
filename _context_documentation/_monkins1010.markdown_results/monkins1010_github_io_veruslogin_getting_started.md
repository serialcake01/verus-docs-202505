# [\#](https://monkins1010.github.io/veruslogin/getting-started/\#installing-verusid-ts-client) Installing verusid-ts-client

In

[Tutorials](https://monkins1010.github.io/categories/tutorials/)

## [\#](https://monkins1010.github.io/veruslogin/getting-started/\#prerequisites) Prerequisites

The verusid-ts-client is installed using [`yarn`](https://classic.yarnpkg.com/en/docs/install/) CLI.

| Package Manager | Supported Platforms |
| --- | --- |
| [`yarn`](https://classic.yarnpkg.com/en/docs/install/) | MacWinLinux |

##### Only yarn is supported at the moment

* * *

## [\#](https://monkins1010.github.io/veruslogin/getting-started/\#install) Install

To install the verusid-ts-client in your javascript project run

```bash

yarn add https://github.com/VerusCoin/verusid-ts-client.git

```

* * *

## [\#](https://monkins1010.github.io/veruslogin/getting-started/\#usage) Usage

### [\#](https://monkins1010.github.io/veruslogin/getting-started/\#initializing-the-verusid-interface) Initializing the VerusID Interface

```typescript

import VerusIdInterface from 'verusid-ts-client';
import { AxiosRequestConfig } from 'axios';

const config: AxiosRequestConfig = {/* Axios configuration */};
const verusIdClient = new VerusIdInterface('root-system-currency-id', 'http://your-verusd-node.com', config);

```

This will allow the `verusid-ts-client` to connect to the verus blockchain. You can connect it directly to a node that you host or to web hosted API endpoint e.g. `https://api.verus.services`

[verusid login](https://monkins1010.github.io/tags/verusid-login/)

Contents

- [Prerequisites](https://monkins1010.github.io/veruslogin/getting-started/#prerequisites)
- [Install](https://monkins1010.github.io/veruslogin/getting-started/#install)
- [Usage](https://monkins1010.github.io/veruslogin/getting-started/#usage)
- [Initializing the VerusID Interface](https://monkins1010.github.io/veruslogin/getting-started/#initializing-the-verusid-interface)