// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Script.sol";
import "../src/CryptoDevsDAO.sol";
import "../src/CryptoDevsNFT.sol";
import "../src/FakeNFTMarketplace.sol";

contract DeployDAO is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the NFT contract
        CryptoDevsNFT nft = new CryptoDevsNFT();
        console.log("CryptoDevsNFT deployed to:", address(nft));

        // Deploy the marketplace
        FakeNFTMarketplace marketplace = new FakeNFTMarketplace();
        console.log("FakeNFTMarketplace deployed to:", address(marketplace));

        // Deploy the fixed DAO contract without initial funding
        CryptoDevsDAO dao = new CryptoDevsDAO(
            address(marketplace),
            address(nft)
        );
        console.log("CryptoDevsDAO (Fixed) deployed to:", address(dao));

        console.log("\n=== Deployment Summary ===");
        console.log("NFT Contract:", address(nft));
        console.log("Marketplace Contract:", address(marketplace));
        console.log("DAO Contract:", address(dao));
        console.log("DAO Initial Balance: 0 ETH (can receive deposits later)");

        vm.stopBroadcast();
    }
}
