# 🚀 NFT DAO Deployment Guide

## Step 1: Get Testnet ETH
- Visit: https://sepoliafaucet.com/
- Use your wallet address
- Request ~0.1 ETH (should be plenty for deployment)

## Step 2: Set Up Environment
Create a `.env` file with your configuration:

```bash
PRIVATE_KEY=0x[YOUR_PRIVATE_KEY]
RPC_URL="https://eth-sepolia.g.alchemy.com/v2/[YOUR_API_KEY]"
ETHERSCAN_API_KEY=[YOUR_ETHERSCAN_API_KEY]
CHAIN_ID=11155111
```

## Step 3: Deploy DAO Contracts
```bash
forge script script/Deploy.s.sol:DeployDAO --rpc-url $RPC_URL --broadcast --verify --etherscan-api-key $ETHERSCAN_API_KEY -vv
```

## Step 4: Update Frontend
After deployment, update `frontend/src/constants.js` with the new addresses from the deployment output:

```javascript
export const CryptoDevsNFTAddress = "0x[NEW_NFT_ADDRESS]";
export const FakeNFTMarketplaceAddress = "0x[NEW_MARKETPLACE_ADDRESS]";
export const CryptoDevsDAOAddress = "0x[NEW_DAO_ADDRESS]";
```

## Step 5: Start the Frontend
```bash
cd frontend
bun install
bun dev
```

## Step 6: Fund the DAO (Optional)
Send some ETH to the DAO address so it can purchase NFTs when proposals pass.

## 🎯 Getting Started with the DAO:
1. **Mint NFTs**: Use the CryptoDevsNFT contract to mint NFTs and become a DAO member
2. **Create Proposals**: Propose purchasing NFTs from the marketplace
3. **Vote on Proposals**: Use your NFT voting power to participate in governance
4. **Execute Proposals**: Execute passed proposals after the deadline

## � Useful Commands:

### Check wallet balance:
```bash
cast balance [YOUR_WALLET_ADDRESS] --rpc-url $RPC_URL
```

### Mint an NFT:
```bash
cast send [NFT_CONTRACT_ADDRESS] "mint()" --private-key $PRIVATE_KEY --rpc-url $RPC_URL
```

### Send ETH to DAO:
```bash
cast send [DAO_CONTRACT_ADDRESS] --value 0.1ether --private-key $PRIVATE_KEY --rpc-url $RPC_URL
```

Ready to deploy! 🚀
