// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";

import {SourceId} from "@knowyourcat/sdk/constants/SourceId.sol";
import {IAggregator} from "@knowyourcat/sdk/interfaces/IAggregator.sol";

import {Category} from "../src/Category.sol";
import {UUPSProxy} from "../src/UUPSProxy.sol";

contract DeployCategory is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        console.log("Deploying category...");

        // Deploy Category implementation contract
        Category categoryImplementation = new Category();

        // Deploy Category proxy contract
        UUPSProxy proxy = new UUPSProxy(address(categoryImplementation), "");

        // Create Category instance of previously deployed proxy
        Category category = Category(address(proxy));

        console.log("Category deployed at %s", address(proxy));
        console.log("Initializing...");

        string memory name = "KnowYourCat.id Category: Non-US";
        string memory symbol = "KYC_NON_US";
        string memory URI = "https://metadata.knowyourcat.id/v1/metadata/";

        // Protocol address
        address aggregator = 0xa0BBbe1C9C43160d6bEBbF2A3A15b62B8895b5Cc; // Deployed on Polygon
        // Source ID
        uint256 sourceId = SourceId.BAB; // Binance Account Bound Token 

        uint256[] memory sources = new uint256[](1);
        sources[0] = sourceId;

        // Initialize deployed category smart contract
        category.initialize(name, symbol, URI, IAggregator(aggregator), sources);
        console.log("Initialized");

        vm.stopBroadcast();
    }
}
