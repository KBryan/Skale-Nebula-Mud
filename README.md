# Skale-Nebula-Mud
Tutorial example for Nebula developers wishing to integrate Skale/Nebula and MUD

Update the packages/client .env.example to the Skale ChainID for either mainnet or testnet you wish to run the client 

Update the packages/contracts to .env.example with the account's private key with deployer roles. Although ensure that this account is funded with sFuel


Edit supportedChains.ts within the packages/client to the Skale/Nebula network you wish to connect your frontend.

```javascript

import { MUDChain, mudFoundry, redstone, garnet } from "@latticexyz/common/chains";
import  {skaleNebula} from "viem/chains";
/*
 * See https://mud.dev/guides/hello-world/add-chain-client
 * for instructions on how to add networks.
 * skaleNebulaTestnet 
 */
export const supportedChains: MUDChain[] = [mudFoundry, redstone, garnet, skaleNebula];
```
