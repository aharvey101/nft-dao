# CryptoDevs DAO

A **Decentralized Autonomous Organization (DAO)** built around NFTs where CryptoDevs NFT holders can participate in governance and vote on proposals to purchase NFTs from a marketplace.

## 🏗️ Architecture

**Smart Contracts (Solidity + Foundry):**
- `CryptoDevsDAO.sol` - The main DAO contract that handles governance and voting
- `CryptoDevsNFT.sol` - ERC721 NFT contract for membership tokens
- `FakeNFTMarketplace.sol` - A mock NFT marketplace for demonstration purposes

**Frontend (Next.js + Web3):**
- Built with Next.js 15 and React 19
- Uses RainbowKit for wallet connections
- Wagmi for Ethereum interactions
- TypeScript for type safety

## 🎯 Key Features

1. **NFT-Based Membership**: Only holders of CryptoDevs NFTs can participate in the DAO
2. **Proposal System**: Members can create proposals to purchase NFTs from the marketplace
3. **Voting Mechanism**: NFT holders can vote on proposals (yay/nay votes)
4. **Treasury Management**: The DAO can hold ETH and make purchases
5. **Time-limited Voting**: Proposals have deadlines for voting

## 🚀 Getting Started

### Prerequisites

- Node.js 18+
- Bun (recommended) or npm
- Foundry
- MetaMask or compatible wallet

### Installation

```bash
# Clone the repository
git clone <repository-url>
cd nft-dao

# Install frontend dependencies
cd frontend
bun install
cd ..

# Install Foundry dependencies
forge install
```

### Smart Contract Development

```bash
# Build contracts
forge build

# Run tests
forge test

# Deploy to testnet
forge script script/Deploy.s.sol:DeployDAO --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Frontend Development

```bash
cd frontend
bun dev
```

Visit `http://localhost:3000` to see the application.

## 📋 How It Works

1. **Mint NFTs**: Users mint CryptoDevs NFTs to become DAO members
2. **Create Proposals**: Members can propose purchasing specific NFTs from the marketplace
3. **Vote**: Other members vote on these proposals using their NFT voting power
4. **Execute**: If a proposal passes and the deadline expires, it can be executed
5. **Purchase**: The DAO treasury funds the NFT purchases

## 🔧 Technical Stack

- **Smart Contracts**: Solidity, Foundry framework
- **Frontend**: Next.js 15, React 19, TypeScript
- **Web3 Integration**: Wagmi, RainbowKit, Viem
- **Testing**: Foundry (Forge)
- **Dependencies**: OpenZeppelin contracts for security standards

## 📁 Project Structure

```
├── src/                    # Smart contracts
│   ├── CryptoDevsDAO.sol
│   ├── CryptoDevsNFT.sol
│   └── FakeNFTMarketplace.sol
├── script/                 # Deployment scripts
├── test/                   # Contract tests
├── frontend/               # Next.js frontend
│   ├── src/
│   │   ├── app/
│   │   └── constants.js
│   └── package.json
└── foundry.toml
```

## 🌐 Deployment

The project is designed to work on Ethereum testnets (Sepolia) for development and testing.

## 📜 License

MIT License
