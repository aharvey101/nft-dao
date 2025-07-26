#!/bin/bash

# NFT DAO Development Helper Script

case "$1" in
  "install")
    echo "🚀 Installing frontend dependencies with Bun..."
    cd frontend && bun install
    ;;
  "dev")
    echo "🚀 Starting development server..."
    cd frontend && bun dev
    ;;
  "build")
    echo "🔨 Building frontend..."
    cd frontend && bun run build
    ;;
  "contracts")
    echo "🔨 Building smart contracts..."
    forge build
    ;;
  "test")
    echo "🧪 Running contract tests..."
    forge test
    ;;
  "clean")
    echo "🧹 Cleaning build artifacts..."
    forge clean
    cd frontend && bun run clean
    ;;
  "deploy")
    echo "🚀 Deploying contracts..."
    forge script script/Deploy.s.sol:DeployDAO --rpc-url $RPC_URL --broadcast --verify --etherscan-api-key $ETHERSCAN_API_KEY -vv
    ;;
  *)
    echo "🎯 NFT DAO Development Commands:"
    echo "  ./dev.sh install    - Install frontend dependencies"
    echo "  ./dev.sh dev        - Start development server"
    echo "  ./dev.sh build      - Build frontend"
    echo "  ./dev.sh contracts  - Build smart contracts"
    echo "  ./dev.sh test       - Run contract tests"
    echo "  ./dev.sh clean      - Clean build artifacts"
    echo "  ./dev.sh deploy     - Deploy contracts (requires .env)"
    ;;
esac
