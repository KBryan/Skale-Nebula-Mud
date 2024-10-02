# Skale-Nebula-Mud
Tutorial example for Nebula developers wishing to integrate Skale/Nebula and MUD

Update the packages/client .env.example to the Skale ChainID you wish to run the client

Update the packages/contracts to .env.example with the private key of the account that has deployer roles


Edit supportedChains.ts within the packages/client to the Skale/Nebula network you wish to connect your frontend.

```javascript
import  {skaleNebula} from "viem/chains";
```