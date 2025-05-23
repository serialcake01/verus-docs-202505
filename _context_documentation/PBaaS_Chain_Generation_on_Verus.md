PBaaS Chain Generation on Verus
This repository is intended to document and inform about the steps required to create a PBaaS chain on Verus (testnet, v0.9.6-1), with the goal of providing a reproducible workflow for future use.

Contents:

Compiling from source
Generating an ID for use on Verus Testnet
Generating a PBaaS chain
Conceptual description of chosen definecurrency options
Background on CHIPS
Itemized options for chips10sec chain
Itemized options for gateway converter
Funding identity
Defining a currency
Verifying currency generation
Launching a PBaaS Chain
Creating Tokens on PBaaS Chain
Compiling from Source
Step 1: Clone, Chain-build with dependencies:
cd ~
git clone https://github.com/VerusCoin/VerusCoin.git verus
cd ~/verus
./zcutil/build.sh -j4
Replace -j4 with your desired threads, if 4 exceeds your system's resources.

If all steps completed successfully, you should have resulting binaries located in ~/verus/src.

Step 2: Launch Verus daemon
# Create a new tmux session
tmux new -s vrsctest

# Launch vrsctest chain
cd ~/verus/src
./verusd -chain=vrsctest &

# Detaching from tmux session can be done with Ctrl+B, then D

If you wish to mine/stake, you can launch with following options:

./verusd -chain=vrsctest -gen -genproclimit=2 -mineraddress=RYQbUr9WtRRAnMjuddZGryrNEpFEV1h8ph -mint &
Fill in equivalent values for your wallet, desired mining process limits, etc. When you need to re-attach to your tmux session, you can do so with: tmux a -t vrsctest.

Generate an ID for use on Verus Testnet
You must have at least 100 VRSCTEST in your wallet to generate a primary ID on the Verus testnet

Step 1: Register name commitment
cd ~/verus
./src/verus -chain=vrsctest registernamecommitment chips10sec RYQbUr9WtRRAnMjuddZGryrNEpFEV1h8ph
You may optionally add other fields such as a referral id. Help text should be consulted for optional parameters. They will not be covered here.

If successful, output should show similar to the following:

{
  "txid": "182fd857eb5205d6484e289aeb7c9295c9bd923d48aad4c4a7cc5f7a5cec0bd9",
  "namereservation": {
    "version": 1,
    "name": "chips10sec",
    "parent": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
    "salt": "909de66a7d747ac0929d4133ffe71300efa91103b5ba5fe3e3eeee1091951114",
    "referral": "",
    "nameid": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg"
  }
}
Step 2: Register identity
Copy and paste the entire resulting JSON object into a registeridentity command, issued to verus client, and append desired identity specifications:

./src/verus -chain=vrsctest registeridentity '{
  "txid": "182fd857eb5205d6484e289aeb7c9295c9bd923d48aad4c4a7cc5f7a5cec0bd9",
  "namereservation": {
    "version": 1,
    "name": "chips10sec",
    "parent": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
    "salt": "909de66a7d747ac0929d4133ffe71300efa91103b5ba5fe3e3eeee1091951114",
    "referral": "",
    "nameid": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg"
  },
    "identity":{
        "name":"chips10sec", 
        "primaryaddresses":["RYQbUr9WtRRAnMjuddZGryrNEpFEV1h8ph"], 
        "minimumsignatures":1, 
        "privateaddress": ""
    }
}'
You should modify relevant identity fields to match desired id, primary address, minsigs, and optionally a private address.

If successful, output should display a txid:

50203a38cffbb313a290ef5635e8baa9a1e70833d71a7cbaefda8bc708f30c77
Wait for this transaction to be confirmed.

Step 3: Verify identity has been created
Identities can be located by name, or by i-address:

# By name
./src/verus -chain=vrsctest getidentity "chips10sec@"

# By i-address
./src/verus -chain=vrsctest getidentity iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg
If successful, output should show similar to the following:

{
  "fullyqualifiedname": "chips10sec.VRSCTEST@",
  "identity": {
    "version": 3,
    "flags": 0,
    "primaryaddresses": [
      "RYQbUr9WtRRAnMjuddZGryrNEpFEV1h8ph"
    ],
    "minimumsignatures": 1,
    "name": "chips10sec",
    "identityaddress": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
    "parent": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
    "systemid": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
    "contentmap": {
    },
    "contentmultimap": {
    },
    "revocationauthority": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
    "recoveryauthority": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
    "timelock": 0
  },
  "status": "active",
  "canspendfor": true,
  "cansignfor": true,
  "blockheight": 25932,
  "txid": "50203a38cffbb313a290ef5635e8baa9a1e70833d71a7cbaefda8bc708f30c77",
  "vout": 0
}
Before generating PBaaS chain, repeat Steps 2 & 3 to generate verus ids for all desired notaries in definecurrency command.

Generating a PBaaS Chain
Conceptual description of chosen `definecurrency` options
In step 2, we will issue a definecurrency command to vrsctest daemon, which includes selected options tailored to CHIPS unique case and blockchain history. It is important to understand both why these options were chosen and what they do.

Background on CHIPS blockchain
CHIPS is a coin that has already reached maximum total supply. In its present form, mining is largely altruistic since block rewards have reduced to zero, and transactions are quite infrequent (miners not being paid by fees). Price discovery has not occurred, and we want to ensure it takes place using Verus's PBaaS tooling. We want existing holders of CHIPS to retain their coins while migrating to a new PBaaS chain, and to provide some backing in basket currencies for price discovery via a gateway converter.

Verus's fee market presents a unique opportunity for a coin that has already reached its max supply and will emit no new coins. Actions taken by users via id generation, cross-chain conversions, and more, will provide greater block rewards to miners. Combined with merge mining capabilities on Verus, this is a big improvement in theoretical security model for CHIPS.

The options below will generate a chips10sec blockchain, as well as a gateway converter bridge.chips10sec.

`definecurrency` options for `chips10sec` and justifications
"name":"chips10sec"
Name for our generated chain

"options": 264
Defines our chain as a PBaaS chain, with OPTION_PBAAS: 0x100 = 256, and OPTION_ID_REFERRALS: 8

"currencies":["vrsctest"]
Defines our chain as being based on existing vrsctest currency

"maxpreconversion":[0]
Prevents users of vrsctest blockchain from preconverting vrsctest to chips10sec in during pre-launch period. If we wanted to accept pre-launch conversions, we could set minpreconversion and maxpreconversion to specify required preconversion amounts for launch to proceed.

"conversions":[1]
Specifies the desired conversion ratio for vrsctest to chips10sec

"eras":[{"reward":7770000,"decay":0,"halving":3153600,"eraend":0}]
Describes reward schedule on new chips10sec chain. We want block subsidies to be 0.0777, with halvings every 3,153,600 blocks. Remainder of emission comes from gateway converter. Any additional issuance beyond that will be supply-neutral.

"notaries":["biz@","BizNotary@","BizNotary1@"]
These notaries will be responsible for notarizing from chips10sec to vrsctest and vice versa. These are required for cross-chain interaction. Specified notaries here are all owned by Biz's control address.

"nodes":[{...},{...}]
Seed nodes for new PBaaS chain

"preallocations":[{"biz@":18650000}]
Pre-allocated amount from supply of new chain. In this example, we are pre-allocating 18,650,000 chips10sec coins to identity biz@. These can then be re-allocated based on snapshot from legacy CHIPS codebase. 2.3M chips will be emitted on eras schedule above.

`definecurrency` options for gateway converter
"gatewayconvertername":"bridge"
Defines a separate blockchain for gateway conversions named bridge.chips10sec

"gatewayconverterissuance":50000
Specifies that our final 100,000 chips10sec supply will be issued through the gateway converter, for a max supply of 21 million coins.

"blocktime":10
Specified that our target block time for difficulty adjustment should be 10 seconds

"currencies":["vrsctest","kmd","btc","chips10sec"]
Specifies a basket of currencies backing our gateway issuance.

"initialcontributions":[1100,1430,0.017,0]
Specifies amounts of backing currencies to contribute on launch of gateway from our chips10sec@ identity address.

"initialsupply":4000
Step 1: Send VRSCTEST, and Basket currencies to identity address
To generate a PBaaS chain, you will need at least a 10,200 VRSCTEST balance in the address registered to your newly generated identity. Once again, we can send to either the identity's canonical name, or the i-address associated with it.

10,200 VRSCTEST is a base cost (covering 200 VRSCTEST currencyregistrationfee, and 10k VRSCTEST pbaassystemregistrationfee). Additional registration costs may be necessary, depending on currency definition specifics.

For this chain, we will be generating both a PBaaS chain (chips10sec@), and a gatewayconverter chain (bridge.chips10sec). We will be initially contributing a basket of currencies to the gateway converter. In example below, we are sending 1200 VRSCTEST to chips10sec@ for funding of basket. Afterwards, we'll convert 200 VRSCTEST to KMD & BTC via gateway converters, which will be sent to our chips10sec@ VerusID as well.

# send vrsctest (10200 for registration, 1200 for basket)
./verus -chain=vrsctest sendtoaddress chips10sec@ 11400
0208d818859574ba2d54048629776958382e065a02e7feae7be3b3b04f0dd42b
Now, we should convert some vrsctest to kmd and btc for funding of basket:

# convert VRSCTEST to KMD & BTC in one go:
./src/verus -chain=vrsctest sendcurrency "*" '[{"amount":100,"via":"VRSC-KMD","convertto":"KMD","address":"chips10sec@"},{"amount":100,"via":"VRSC-BTC","convertto":"BTC","address":"chips10sec@"}]'
opid-1db08a57-9c04-47bc-96be-aaabe860dbef
Check operation status:

./src/verus -chain=vrsctest z_getoperationresult '["opid-1db08a57-9c04-47bc-96be-aaabe860dbef"]'
[
  {
    "id": "opid-1db08a57-9c04-47bc-96be-aaabe860dbef",
    "status": "success",
    "creation_time": 1683745148,
    "result": {
      "txid": "d2bc9b56383e1fc48af84ef1cb42f29373391eefca7be767d7585301d9d711bb"
    },
    "execution_secs": 0.072621353,
    "method": "sendcurrency",
    "params": [
      {
        "amount": 100,
        "via": "VRSC-KMD",
        "convertto": "KMD",
        "address": "chips10sec@"
      },
      {
        "amount": 100,
        "via": "VRSC-BTC",
        "convertto": "BTC",
        "address": "chips10sec@"
      }
    ]
  }
]
After verifying that "status": "success" is present in operationresult above, we need to wait for a notarization to occur before the converted KMD & BTC will show in our Identity's wallet currency balance.

Check this with the following command. Once it shows entries for VRSCTEST, KMD, and BTC, notarization has occurred and funds are free for use.

./src/verus -chain=vrsctest getcurrencybalance "chips10sec@"
{
  "VRSCTEST": 11400.00000000,
  "KMD": 1437.57296112,
  "BTC": 0.01781147
}
Step 2: Define a currency with desired parameters
./src/verus -chain=vrsctest definecurrency '{"name":"chips10sec","options":264,"currencies":["vrsctest"],"maxpreconversion":[0], "conversions":[1],"eras":[{"reward":7770000,"decay":0,"halving":3153600,"eraend":0}],"notaries":["biz@","chipsnotary@","chipsnotary1@"],"minnotariesconfirm":2,"nodes":[{"networkaddress":"51.222.159.244:12121"},{"networkaddress":"149.56.13.160:12121"}],"preallocations":[{"biz@":20459930}], "gatewayconvertername":"bridge", "gatewayconverterissuance":50000, "blocktime":10}' '{"currencies":["vrsctest","kmd","btc","chips10sec"],"initialcontributions":[1200,1430,0.017,0],"initialsupply":4000}'
If successful, you should see a very large JSON output in your terminal. This command does not finish the process of defining a currency. It simply constructs a transaction, and does not send it to network.

Step 3: Send resulting raw transaction to network
Copy and paste the "hex" value from JSON output into sendrawtransaction

./src/verus -chain=vrsctest sendrawtransaction 0400008085202f8904770cf308c78bdaefba7c1ad73308e7a1a9bae83556ef90a213b3fbcf383a205000000000694c67010101012102d6cffd65b1e6209af2266742f5e048614658e48d023c1e2c8e7e5ec4454bfc99401dde739e673644906111313047c5101434d18f98eddda7d29ffcaf102823b47050b5279c44722319c9fa2adf63030ceabb1dbda190dc084530ef1154ad3d9157ffffffff2bd40d4fb0b3e37baefee7025a062e38586977298604542dba74958518d8080201000000694c67010101012102d6cffd65b1e6209af2266742f5e048614658e48d023c1e2c8e7e5ec4454bfc9940b8103da4e0777172759d66deb4e73489f81e54e34dbf9a50c708d5fc79cde8fd2b7e4481ac530d17b41a84120e8d049e841e87d1ef2d85beba20b8e2949a0a0cffffffff56c6a4a37a265a1db6b65b0e8296a5dbc15c6d081bfa44bfbd3f5a4ce755c17902000000694c67010101012102d6cffd65b1e6209af2266742f5e048614658e48d023c1e2c8e7e5ec4454bfc99405c9dad7fb1c840391742e8cb68223763e221185e967294b2d0ffa8598b44fdc429d88c1d9e94849ab70117946935648e212a5f233adf2637b9cc1fdf989b8714ffffffff7890f1c45ef4375119ed9729f5be345cfc585633999efe3c962624727ba6cc0902000000694c67010101012102d6cffd65b1e6209af2266742f5e048614658e48d023c1e2c8e7e5ec4454bfc9940b22a22f342ff31572acbd2bde2679d213249c1eabe6dab4966277247373363f46d5369a40aa274a6aa3c8b15beb0167c1c26f6e1dbd70db5c4c935c6419a2fe1ffffffff0f0000000000000000fd25014704030001031504ba5270d765535b4afaa44f23ab334fcb31c967da1504ba5270d765535b4afaa44f23ab334fcb31c967da1504ba5270d765535b4afaa44f23ab334fcb31c967dacc4cd904030e01011504ba5270d765535b4afaa44f23ab334fcb31c967da4c8403000000010000000114fdb1570a0d7ff7ec497ae03fef470b30ab75b1e501000000a6ef9ea235635e328124ff3429db9f9e91b64e2d0a636869707331307365630000ba5270d765535b4afaa44f23ab334fcb31c967daba5270d765535b4afaa44f23ab334fcb31c967da00a6ef9ea235635e328124ff3429db9f9e91b64e2d000000001b04030f01011504ba5270d765535b4afaa44f23ab334fcb31c967da1b04031001011504ba5270d765535b4afaa44f23ab334fcb31c967da750000000000000000fdc3012704030001012102a0de91740d3d5a3a4a7990ae22315133d02f33716b339ebce88662d012224ef5cc4d960104030201012102a0de91740d3d5a3a4a7990ae22315133d02f33716b339ebce88662d012224ef54d6c010100000008010000a6ef9ea235635e328124ff3429db9f9e91b64e2d0a63686970733130736563a6ef9ea235635e328124ff3429db9f9e91b64e2dba5270d765535b4afaa44f23ab334fcb31c967da01000000010000000000000000000000000000000000000000000000000080ca10000000000000000000018e6e5ae05ebf7dd1d74b17f45ca4791e68bf639e00f0cd3264710700005039278c04000001a6ef9ea235635e328124ff3429db9f9e91b64e2d000100e1f50500000000000100000000000000000100000000000000000100000000000000000000000000038e6e5ae05ebf7dd1d74b17f45ca4791e68bf639e6df4164224d7eb36df23a3fccf2cd6ae7b5827dc4d3213c88cd5b55c4e16c151a34a63f37e52f1ae02a49faec70003f98800c9bfde8f009c8ca4939f00a49faec700bc8340bc8340066272696467650fff001e0a0000002d0000003c0001908f76000000000001000000000000000001c01e30000100000000750000000000000000b51a0403000101146e4ae35cca122eb65e73abd4c956940ef25a3eabcc4c9604030d0101146e4ae35cca122eb65e73abd4c956940ef25a3eab4c7a01000100ba5270d765535b4afaa44f23ab334fcb31c967da01000000ba5270d765535b4afaa44f23ab334fcb31c967da0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000750000000000000000fdb9012704030001012102d85f078815b7a52faa92639c3691d2a640e26c4e06de54dd1490f0e93bcc11c3cc4d8c0104030501012102d85f078815b7a52faa92639c3691d2a640e26c4e06de54dd1490f0e93bcc11c34d62010280030000ba5270d765535b4afaa44f23ab334fcb31c967da01000200ba5270d765535b4afaa44f23ab334fcb31c967da01a6ef9ea235635e328124ff3429db9f9e91b64e2d01000000000100e1f50500000000000082dcbd84cf9bff0000000000000000000000000000000000000000000000000000000000000000000100000000000000000100000000000000000100000000000000000100e1f505000000000100000000000000000100000000000000000100000000010000000000000000816500000000000000000000000000000000000000000000000000000000000000000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000021435312e3232322e3135392e3234343a31323132310000000000000000000000000000000000000000133134392e35362e31332e3136303a31323132310000000000000000000000000000000000000000750000000000000000fdff002704030001012102cbfe54fb371cfc89d35b46cafcad6ac3b7dc9b40546b0f30b2b29a4865ed3b4acc4cd304030c01012102cbfe54fb371cfc89d35b46cafcad6ac3b7dc9b40546b0f30b2b29a4865ed3b4a4caa01004100a6ef9ea235635e328124ff3429db9f9e91b64e2d0000000000000000000000000000000000000000000000000000000000000000ba5270d765535b4afaa44f23ab334fcb31c967daba5270d765535b4afaa44f23ab334fcb31c967da0000ffffffff000000000080ca0101a6ef9ea235635e328124ff3429db9f9e91b64e2d0088526a7400000001a6ef9ea235635e328124ff3429db9f9e91b64e2d0088526a740000000000750000000000000000fdac012704030001012102a0de91740d3d5a3a4a7990ae22315133d02f33716b339ebce88662d012224ef5cc4d7f0104030201012102a0de91740d3d5a3a4a7990ae22315133d02f33716b339ebce88662d012224ef54d55010100000021020000ba5270d765535b4afaa44f23ab334fcb31c967da06627269646765a6ef9ea235635e328124ff3429db9f9e91b64e2dba5270d765535b4afaa44f23ab334fcb31c967da01000000010000000000ba5270d765535b4afaa44f23ab334fcb31c967da80ca100000a0db215d00000000005039278c04000004a6ef9ea235635e328124ff3429db9f9e91b64e2d3c28dd25a7127ce1b1e9a8dd9fa550a1b805dc1054852c4e9fb1d4c4291fc093e41ce2c7befa4076ba5270d765535b4afaa44f23ab334fcb31c967da0440787d0140787d0140787d0140787d0104000000000000000000000000000000000000000000000000000000000000000000000400cc829c1900000000d6764b21000000a0f019000000000000000000000000000400cc829c1900000000d6764b21000000a0f0190000000000000000000000000000000000000000a49faec70003f98800750000000000000000b51a0403000101146e4ae35cca122eb65e73abd4c956940ef25a3eabcc4c9604030d0101146e4ae35cca122eb65e73abd4c956940ef25a3eab4c7a01000100ba5270d765535b4afaa44f23ab334fcb31c967da0100000091ccbce2bc71649d2d91bf6384e38d266a1d7fa500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff750000000000000000fd7f022704030001012102d85f078815b7a52faa92639c3691d2a640e26c4e06de54dd1490f0e93bcc11c3cc4d520204030501012102d85f078815b7a52faa92639c3691d2a640e26c4e06de54dd1490f0e93bcc11c34d2802028003000091ccbce2bc71649d2d91bf6384e38d266a1d7fa50100030091ccbce2bc71649d2d91bf6384e38d266a1d7fa504a6ef9ea235635e328124ff3429db9f9e91b64e2d3c28dd25a7127ce1b1e9a8dd9fa550a1b805dc1054852c4e9fb1d4c4291fc093e41ce2c7befa4076ba5270d765535b4afaa44f23ab334fcb31c967da0440787d0140787d0140787d0140787d0104000000000000000000000000000000000000000000000000005039278c0400008ad18dedbf00008ad18dedbf00000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000005039278c04000004000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000004a086010000000000a086010000000000a086010000000000a0860100000000000400000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000000816500000000000000000000000000000000000000000000000000000000000000000000ffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000750000000000000000fdff002704030001012102cbfe54fb371cfc89d35b46cafcad6ac3b7dc9b40546b0f30b2b29a4865ed3b4acc4cd304030c01012102cbfe54fb371cfc89d35b46cafcad6ac3b7dc9b40546b0f30b2b29a4865ed3b4a4caa01004100a6ef9ea235635e328124ff3429db9f9e91b64e2d0000000000000000000000000000000000000000000000000000000000000000ba5270d765535b4afaa44f23ab334fcb31c967da91ccbce2bc71649d2d91bf6384e38d266a1d7fa50000ffffffff000000000080ca0101a6ef9ea235635e328124ff3429db9f9e91b64e2d00e40b540200000001a6ef9ea235635e328124ff3429db9f9e91b64e2d00e40b5402000000000075dcd2269e19000000981a040300010114cb8a0f7f651b484a81e2312c3438deb601e27368cc4c79040308010114cb8a0f7f651b484a81e2312c3438deb601e273684c5d01a6ef9ea235635e328124ff3429db9f9e91b64e2d8298f099883c05a6ef9ea235635e328124ff3429db9f9e91b64e2d809b20041491ccbce2bc71649d2d91bf6384e38d266a1d7fa591ccbce2bc71649d2d91bf6384e38d266a1d7fa575204e000000000000981a040300010114cb8a0f7f651b484a81e2312c3438deb601e27368cc4c79040308010114cb8a0f7f651b484a81e2312c3438deb601e273684c5d013c28dd25a7127ce1b1e9a8dd9fa550a1b805dc108393ebe0f15b05a6ef9ea235635e328124ff3429db9f9e91b64e2d809b20041491ccbce2bc71649d2d91bf6384e38d266a1d7fa591ccbce2bc71649d2d91bf6384e38d266a1d7fa575204e000000000000951a040300010114cb8a0f7f651b484a81e2312c3438deb601e27368cc4c76040308010114cb8a0f7f651b484a81e2312c3438deb601e273684c5a0154852c4e9fb1d4c4291fc093e41ce2c7befa4076e7fc4005a6ef9ea235635e328124ff3429db9f9e91b64e2d809b20041491ccbce2bc71649d2d91bf6384e38d266a1d7fa591ccbce2bc71649d2d91bf6384e38d266a1d7fa5750088526a74000000832704030001012103b99d7cb946c5b1f8a54cde49b8d7e0a2a15a22639feb798009f82b519526c050cc4c5704030b01012103b99d7cb946c5b1f8a54cde49b8d7e0a2a15a22639feb798009f82b519526c0502f01a6ef9ea235635e328124ff3429db9f9e91b64e2d8dc5d1c98f00ba5270d765535b4afaa44f23ab334fcb31c967da7500e40b5402000000822704030001012103b99d7cb946c5b1f8a54cde49b8d7e0a2a15a22639feb798009f82b519526c050cc4c5604030b01012103b99d7cb946c5b1f8a54cde49b8d7e0a2a15a22639feb798009f82b519526c0502e01a6ef9ea235635e328124ff3429db9f9e91b64e2da49faec700ba5270d765535b4afaa44f23ab334fcb31c967da75e4406752020000007a1b04030001011504ba5270d765535b4afaa44f23ab334fcb31c967dacc4c5a04030901011504ba5270d765535b4afaa44f23ab334fcb31c967da3e86fefeff01023c28dd25a7127ce1b1e9a8dd9fa550a1b805dc1095c8012b0000000054852c4e9fb1d4c4291fc093e41ce2c7befa4076dbee0000000000007500000000966500000000000000000000000000

# resulting txid
139c9d4b6d0d0603f90754261395dc3dc9e78f3bcf999c2adf711b215ad6541f
Step 4: Verify currency generation was succesful
./src/verus -chain=vrsctest getcurrency chips10sec
If successful, output should show similar to the following:

{
  "version": 1,
  "options": 264,
  "name": "chips10sec",
  "currencyid": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
  "parent": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
  "systemid": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
  "notarizationprotocol": 1,
  "proofprotocol": 1,
  "launchsystemid": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
  "startblock": 26000,
  "endblock": 0,
  "currencies": [
    "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq"
  ],
  "conversions": [
    1.00000000
  ],
  "maxpreconversion": [
    0.00000000
  ],
  "preallocations": [
    {
      "iGTdav42siHgX96ybWn3pRTFxQgiUpZ9K9": 20950000.00000000
    }
  ],
  "initialcontributions": [
    0.00000000
  ],
  "gatewayconverterissuance": 50000.00000000,
  "idregistrationfees": 100.00000000,
  "idreferrallevels": 3,
  "idimportfees": 0.02000000,
  "notaries": [
    "iGTdav42siHgX96ybWn3pRTFxQgiUpZ9K9",
    "iDVuVSjzYatSYq19YkPJdCH6SuA59WBWvC",
    "iAWhTH5VMq4Ech2zz2ZrASsyRtWyUFb9yw"
  ],
  "minnotariesconfirm": 2,
  "currencyregistrationfee": 200.00000000,
  "pbaassystemregistrationfee": 10000.00000000,
  "currencyimportfee": 100.00000000,
  "transactionimportfee": 0.01000000,
  "transactionexportfee": 0.01000000,
  "gatewayconverterid": "iGmSgKstjRWTnGcjhytDH4pRpTKuWJzC8x",
  "gatewayconvertername": "bridge",
  "initialtarget": "000000ff0f000000000000000000000000000000000000000000000000000000",
  "blocktime": 10,
  "powaveragingwindow": 45,
  "notarizationperiod": 60,
  "eras": [
    {
      "reward": 7770000,
      "decay": 0,
      "halving": 3153600,
      "eraend": 0
    }
  ],
  "currencyidhex": "da67c931cb4f33ab234fa4fa4a5b5365d77052ba",
  "fullyqualifiedname": "chips10sec",
  "currencynames": {
    "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq": "VRSCTEST"
  },
  "definitiontxid": "139c9d4b6d0d0603f90754261395dc3dc9e78f3bcf999c2adf711b215ad6541f",
  "definitiontxout": 1,
  "nodes": [
    {
      "networkaddress": "51.222.159.244:12121",
      "nodeidentity": "i3UXS5QPRQGNRDDqVnyWTnmFCTHDbzmsYk"
    },
    {
      "networkaddress": "149.56.13.160:12121",
      "nodeidentity": "i3UXS5QPRQGNRDDqVnyWTnmFCTHDbzmsYk"
    }
  ],
  "lastconfirmedheight": 25985,
  "lastconfirmedtxid": "139c9d4b6d0d0603f90754261395dc3dc9e78f3bcf999c2adf711b215ad6541f",
  "lastconfirmedcurrencystate": {
    "flags": 2,
    "version": 1,
    "currencyid": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
    "launchcurrencies": [
      {
        "currencyid": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
        "weight": 0.00000000,
        "reserves": 1.00000000,
        "priceinreserve": 1.00000000
      }
    ],
    "initialsupply": 0.00000000,
    "emitted": 0.00000000,
    "supply": 21000000.00000000,
    "currencies": {
      "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq": {
        "reservein": 0.00000000,
        "primarycurrencyin": 0.00000000,
        "reserveout": 0.00000000,
        "lastconversionprice": 1.00000000,
        "viaconversionprice": 0.00000000,
        "fees": 0.00000000,
        "conversionfees": 0.00000000,
        "priorweights": 0.00000000
      }
    },
    "primarycurrencyfees": 0.00000000,
    "primarycurrencyconversionfees": 0.00000000,
    "primarycurrencyout": 0.00000000,
    "preconvertedout": 0.00000000
  },
  "bestheight": 25985,
  "besttxid": "139c9d4b6d0d0603f90754261395dc3dc9e78f3bcf999c2adf711b215ad6541f",
  "bestcurrencystate": {
    "flags": 2,
    "version": 1,
    "currencyid": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
    "launchcurrencies": [
      {
        "currencyid": "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq",
        "weight": 0.00000000,
        "reserves": 1.00000000,
        "priceinreserve": 1.00000000
      }
    ],
    "initialsupply": 0.00000000,
    "emitted": 0.00000000,
    "supply": 21000000.00000000,
    "currencies": {
      "iJhCezBExJHvtyH3fGhNnt2NhU4Ztkf2yq": {
        "reservein": 0.00000000,
        "primarycurrencyin": 0.00000000,
        "reserveout": 0.00000000,
        "lastconversionprice": 1.00000000,
        "viaconversionprice": 0.00000000,
        "fees": 0.00000000,
        "conversionfees": 0.00000000,
        "priorweights": 0.00000000
      }
    },
    "primarycurrencyfees": 0.00000000,
    "primarycurrencyconversionfees": 0.00000000,
    "primarycurrencyout": 0.00000000,
    "preconvertedout": 0.00000000
  }
}
Cross-reference startblock value with current blockchain height. Do not begin mining/staking until after this height!

Launching a PBaaS chain
Merge mine the first block on generated chain
Now that we have defined our chain's currency, generated and committed the launch parameters... we need to merge mine at least the first block in conjunction with the launch system chain.

Only the first block must be merge mined. Afterward, we can choose to merge mine or mine the newly launched chain independently.

To do this, we must be already mining on VRSCTEST in our example. This can be performed with the following startup options (for solo mining):

./verusd -chain=vrsctest -gen -genproclimit=2 -mineraddress=RYQbUr9WtRRAnMjuddZGryrNEpFEV1h8ph -mint &
Next, we must spin up our chips10sec daemon, and start mining. We can either: a.) fetch the address generated on wallet initialization, or b.) import our WIF private key from vrsctest chain.

# Start chips10sec daemon
./verusd -chain=chips10sec -testnet &

# option a.) Fetch address generated on init
./verus -chain=chips10sec -testnet getaddressesbyaccount ""

# option b.) import WIF
./verus -chain=chips10sec -testnet importprivkey <WIF here>
Once we've fetched our new address, or imported a known address, we can restart our chips10sec daemon to begin merge mining with parent vrsctest:

# Stop chips10sec daemon
./verus -chain=chips10sec -testnet stop

# Restart with mining options
./verusd -chain=chips10sec -testnet -gen -genproclimit=2 -mineraddress=RYQbUr9WtRRAnMjuddZGryrNEpFEV1h8ph -mint &
If successful, you should see output in your terminal:

Merge mining chips10sec with vrsctest as the hashing chain
Found block 2885
staking reward 0.00010000 chips10sec!
POS hash: 00000000007fca5a2624d9276d2ddd7074f68fd32b9f6c81904d96b4a12f6301
target:   0000000002e3ae00000000000000000000000000000000000000000000000000

Block 2885 added to chain
Similar messages should be seen in vrsctest daemon output. Once the first block is mined, running vrsctest daemon at the same time is optional.

Creating a Token on Chips PBaaS Chain
After creating our own chain using Verus's PBaaS tooling, we can issue tokens with various properties on our newly launched chain.

This allows us to create IDs on chips10sec's mineable blockchain, and also allows us to create subIDs within the token's namespace. SubIDs have the added benefit of greatly reduced registration costs compared to IDs on the parent chain.

Below, we'll create a token called poker on the chips10sec blockchain. This token is 100% arbitrary, coins should have no real value, and we will only be using it for recording certain game data for Chips.

Register name commitment and identity in the same fashion as on vrsctest blockchain. This time we perform the operation on chips10sec:
./verus -chain=chips10sec -testnet registernamecommitment poker RYQbUr9WtRRAnMjuddZGryrNEpFEV1h8ph
The response should look the same as before, with a different value for "parent":

{
  "txid": "20514cc5ee44e3657307e150d83630fb664f20565c7bd1446cb871db08981bb3",
  "namereservation": {
    "version": 1,
    "name": "poker",
    "parent": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
    "salt": "263d3ce1b68ba5259247052b09f2687a3ade9b204369b9231baca3eb4a61e0bb",
    "referral": "",
    "nameid": "i6gViGxt7YinkJZoubKdbWBrqdRCb1Rkvs"
  }
}
Next, register the identity:
./verus -chain=chips10sec -testnet registeridentity '{
  "txid": "20514cc5ee44e3657307e150d83630fb664f20565c7bd1446cb871db08981bb3",
  "namereservation": {
    "version": 1,
    "name": "poker",
    "parent": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
    "salt": "263d3ce1b68ba5259247052b09f2687a3ade9b204369b9231baca3eb4a61e0bb",
    "referral": "",
    "nameid": "i6gViGxt7YinkJZoubKdbWBrqdRCb1Rkvs"
  },
  "identity": {
     "name":"poker",
     "primaryaddresses":["RAaHAuEqo7Ek2WMvEtsRRKg7QjABaJsx9v","RGa9Wyuw11sUJKFomWXA76EHps2heLUeni"],
     "minimumsignatures":1,
     "privateaddress": ""
  }
}'
Fund the registered identity with 200 chips10sec, and issue a definecurrency command:
./verus -chain=chips10sec -testnet definecurrency '{"options":32, "name":"poker.chips10sec","preallocations":[{"biz.chips10sec@":500000},{"sg777.chips10sec@":500000}],"proofprotocol":2}'
Send resulting hex output to network via sendrawtransaction:
./verus -chain=chips10sec -testnet sendrawtransaction 0400008085202f89022174b8680f19ba3e1b100903387a5bd63357bf639c187ce46fdeb7e68c69fa1500000000694c67010101012103c730f2aa62320a564fedcbef764a08b23c361034527e6f916ce81cf0492593ce400861ec9b8e960acaeb1ebbd02dcb87ee510f943cef5b0006762bb47e942c04cf408aa444f3ee2c40e2e577d2c4f8d17d15e24b90a440761d611c0b428765c183fffffffffa34dd50ca52c42f2cc5a8bc3f3fcff3b4c236eae601f5b37f76b504198dc4d601000000694c67010101012103c730f2aa62320a564fedcbef764a08b23c361034527e6f916ce81cf0492593ce409e31a7bcba53a4d12f8f1adc57254424a0228da51ee82904f9d2564dbe497edd5cc5d950e159c4a10b056ba2ea8ea4f9c8ad72957c966330531ae848a0cfd875ffffffff070000000000000000fd35014704030001031504232beeb9dd0ccce6951d2d89966bf161166403491504232beeb9dd0ccce6951d2d89966bf161166403491504232beeb9dd0ccce6951d2d89966bf16116640349cc4ce904030e01011504232beeb9dd0ccce6951d2d89966bf161166403494c94030000000100000002140e3372cc819a309e75eb17ce41ca6183547ee41a144ffdd0678195bd28d31bf61be707f623601ac38a01000000ba5270d765535b4afaa44f23ab334fcb31c967da05706f6b65720000232beeb9dd0ccce6951d2d89966bf16116640349232beeb9dd0ccce6951d2d89966bf1611664034900ba5270d765535b4afaa44f23ab334fcb31c967da000000001b04030f01011504232beeb9dd0ccce6951d2d89966bf161166403491b04031001011504232beeb9dd0ccce6951d2d89966bf16116640349750000000000000000fd21012704030001012102a0de91740d3d5a3a4a7990ae22315133d02f33716b339ebce88662d012224ef5cc4cf504030201012102a0de91740d3d5a3a4a7990ae22315133d02f33716b339ebce88662d012224ef54ccc0100000020000000ba5270d765535b4afaa44f23ab334fcb31c967da05706f6b6572ba5270d765535b4afaa44f23ab334fcb31c967daba5270d765535b4afaa44f23ab334fcb31c967da01000000020000000000000000000000000000000000000000000000000086862b000000000000000000029970927aab8ffcd56a6783eb1757365c300fdb9800203d88792d00007ff7704e0aeef2d7fac6a0efa184cd21622f403300203d88792d000000000000000000000000000000000000000000000000a49faec70003f98800750000000000000000b51a0403000101146e4ae35cca122eb65e73abd4c956940ef25a3eabcc4c9604030d0101146e4ae35cca122eb65e73abd4c956940ef25a3eab4c7a01000900ba5270d765535b4afaa44f23ab334fcb31c967da97c30100232beeb9dd0ccce6951d2d89966bf161166403490000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000750000000000000000fd09012704030001012102d85f078815b7a52faa92639c3691d2a640e26c4e06de54dd1490f0e93bcc11c3cc4cdd04030501012102d85f078815b7a52faa92639c3691d2a640e26c4e06de54dd1490f0e93bcc11c34cb40280030000232beeb9dd0ccce6951d2d89966bf1611664034901000200232beeb9dd0ccce6951d2d89966bf16116640349000000000095ddb082e7ff000000000000000000000000000000000000000000000000000000000000000000000000000000000097c301000000000000000000000000000000000000000000000000000000000000000000ffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000750000000000000000fdff002704030001012102cbfe54fb371cfc89d35b46cafcad6ac3b7dc9b40546b0f30b2b29a4865ed3b4acc4cd304030c01012102cbfe54fb371cfc89d35b46cafcad6ac3b7dc9b40546b0f30b2b29a4865ed3b4a4caa01004100ba5270d765535b4afaa44f23ab334fcb31c967da0000000000000000000000000000000000000000000000000000000000000000ba5270d765535b4afaa44f23ab334fcb31c967da232beeb9dd0ccce6951d2d89966bf161166403490000ffffffff000000000086861701ba5270d765535b4afaa44f23ab334fcb31c967da00e40b540200000001ba5270d765535b4afaa44f23ab334fcb31c967da00e40b540200000000007500e40b5402000000822704030001012103b99d7cb946c5b1f8a54cde49b8d7e0a2a15a22639feb798009f82b519526c050cc4c5604030b01012103b99d7cb946c5b1f8a54cde49b8d7e0a2a15a22639feb798009f82b519526c0502e01ba5270d765535b4afaa44f23ab334fcb31c967daa49faec700232beeb9dd0ccce6951d2d89966bf161166403497500e1f5050000000024050403000000cc1b04030001011504232beeb9dd0ccce6951d2d89966bf161166403497500000000acc301000000000000000000000000
The above options should be fairly self-explanatory. We are creating a token with options = 32, and preallocating 1 million tokens to ourselves. proofprotocol = 2 allows us to generate subIDs within the token's namespace.

Wait for the startblock height to be reached on parent chain, and token will be live.

Creating a subID in Token Namespace
Note that for subID creation, you will need 0.02 CHIPS, and 100 of parent token (i.e. poker.chips10sec), unless ID registration cost was manually changed.

We can register a subID in the same fashion as an upper-level ID, but there are a couple differences in arguments when doing so:

Register name commitment (take note of the extra arguments being passed to command):
./verus -chain=chips10sec -testnet registernamecommitment test RAaHAuEqo7Ek2WMvEtsRRKg7QjABaJsx9v "" "poker.chips10sec"
{
  "txid": "3a3fb2e1e0f52635e3f50cb25e3d0b18fb38e75cda5e338389a42d59e29d4111",
  "namereservation": {
    "version": 1,
    "name": "test",
    "parent": "i6gViGxt7YinkJZoubKdbWBrqdRCb1Rkvs",
    "salt": "abc21a3e0f60966ae526db388c4b8fb53b9c25c378e4fdad2666d17d73cbd2bb",
    "referral": "",
    "nameid": "i7YbWFramcp6JAJhKKuLtGfjLdwQmHo82n"
  }
}
Register the subID (take note that we need to reference token name in "identity" object of JSON):
./verus -chain=chips10sec -testnet registeridentity '{
  "txid": "3a3fb2e1e0f52635e3f50cb25e3d0b18fb38e75cda5e338389a42d59e29d4111",
  "namereservation": {
    "version": 1,
    "name": "test",
    "parent": "i6gViGxt7YinkJZoubKdbWBrqdRCb1Rkvs",
    "salt": "abc21a3e0f60966ae526db388c4b8fb53b9c25c378e4fdad2666d17d73cbd2bb",
    "referral": "",
    "nameid": "i7YbWFramcp6JAJhKKuLtGfjLdwQmHo82n"
  },
  "identity": {
     "name":"test.poker",
     "primaryaddresses":["RAaHAuEqo7Ek2WMvEtsRRKg7QjABaJsx9v"],
     "minimumsignatures":1,
        "privateaddress": ""
  }
}'
Verify Creation of our subID:
./verus -chain=chips10sec -testnet getidentity test.poker.chips10sec@
{
  "identity": {
    "version": 3,
    "flags": 0,
    "primaryaddresses": [
      "RYQbUr9WtRRAnMjuddZGryrNEpFEV1h8ph"
    ],
    "minimumsignatures": 1,
    "name": "test",
    "identityaddress": "iBiobcQ49xpTuL897iAjkYfosbQLMNpUjH",
    "parent": "i6CS9ewyp4oWozG2eceXPk3uSHg3dihdPg",
    "systemid": "iLThsqsgwFRKzRG11j7QaYgNQJ9q16VGpg",
    "contentmap": {
    },
    "contentmultimap": {
    },
    "revocationauthority": "iBiobcQ49xpTuL897iAjkYfosbQLMNpUjH",
    "recoveryauthority": "iBiobcQ49xpTuL897iAjkYfosbQLMNpUjH",
    "timelock": 0
  },
  "status": "active",
  "canspendfor": true,
  "cansignfor": true,
  "blockheight": 1803,
  "txid": "002d2c3be9d34ab75a152af6f8bded6af5c985dbb774342826143e9f97c71321",
  "vout": 0
}
In addition to lowering identity registration costs, subIDs reduce costs for updating the identity later. In Chips, we will be using the contentmultimap to store various game-related data. Lower costs at the subID level make this much less expensive.