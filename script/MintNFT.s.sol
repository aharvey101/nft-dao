// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Script.sol";
import "../src/CryptoDevsNFT.sol";

contract MintNFT is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Use your existing NFT contract address
        address nftAddress = vm.envAddress("CRYPTODEVS_NFT_ADDRESS");
        CryptoDevsNFT nft = CryptoDevsNFT(nftAddress);

        // Mint an NFT to the deployer
        nft.mint();
        
        console.log("NFT minted successfully!");
        console.log("Your new balance:", nft.balanceOf(msg.sender));

        vm.stopBroadcast();
    }
}
