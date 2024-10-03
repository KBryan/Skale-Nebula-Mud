# Skale-Nebula-Mud
Tutorial example for Nebula developers wishing to integrate Skale/Nebula and MUD

Update the `packages/client .env.example` to the Skale ChainID for either `mainnet` or `testnet` you wish to run the client 

```javascript
VITE_CHAIN_ID=37084624
```

Update the `packages/contracts to .env.example` with the account's private key with deployer roles. Although ensure that this account is funded with `sFuel`

To get sFuel follow the link and fund your account https://www.sfuelstation.com/ 
```javascript
# This .env file is for demonstration purposes only.
#
# This should usually be excluded via .gitignore and the env vars attached to
# your deployment environment, but we're including this here for ease of local
# development. Please do not commit changes to this file!
#
# Enable debug logs for MUD CLI
DEBUG=mud:*
#
# Anvil default private key:
export PRIVATE_KEY="Add Private Key with Deployer Role"
```


Edit supportedChains.ts within the packages/client to the Skale/Nebula network you wish to connect your frontend.

```javascript

import { MUDChain, mudFoundry, redstone, garnet } from "@latticexyz/common/chains";
import  {skaleNebulaTestnet} from "viem/chains";
/*
 * See https://mud.dev/guides/hello-world/add-chain-client
 * for instructions on how to add networks.
 * skaleNebulaTestnet 
 */
export const supportedChains: MUDChain[] = [mudFoundry, redstone, garnet, skaleNebulaTestnet];
```

You will also need to edit the foundy.toml file when editing the chain you wish to connect with any supplying the correct `eth_rpc_url`

```rust
[profile.default]
solc = "0.8.24"
ffi = false
fuzz_runs = 256
optimizer = true
optimizer_runs = 3000
verbosity = 2
src = "src"
test = "test"
out = "out"
allow_paths = [
  # pnpm symlinks to the project root's node_modules
  "../../node_modules",
  # template uses linked mud packages from within the mud monorepo
  "../../../../packages",
  # projects created from this template and using linked mud packages
  "../../../mud/packages",
]
extra_output_files = [
  "abi",
  "evm.bytecode"
]
fs_permissions = [{ access = "read", path = "./"}]

[profile.garnet]
eth_rpc_url = "https://rpc.garnetchain.com"

[profile.skaleNebulaTestnet]
eth_rpc_url = "https://testnet.skalenodes.com/v1/lanky-ill-funny-testnet"

[profile.redstone]
eth_rpc_url = "https://rpc.redstonechain.com"

```

# Compiling the smart contracts
Deploying smart contracts on the Skale network you must use the following command within the CLI within the contracts folder

```
 pnpm mud deploy --profile skaleNebula --forgeScriptOptions="--legacy"
```

Now, from within the main MUD project directory. Run the following command.

```
pnpm dev
```

Lastly, you can visit the following URL in your browser. NOTE change the chainId to the network you wish to connect. 

```
http://localhost:3000/?chainid=37084624

```
