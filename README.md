# Smart Contract Implemented CAT-egory on Polygon Chain

This repository contains a smart contract that implements CAT-egories on the Polygon chain. CAT-egories are defined rules that, once met, allow users to be whitelisted and given an NFT access token that can be used by smart contracts or DApps. By leveraging the KnowYourCat protocol, this smart contract helps ensure that only trusted and verified addresses can access specific Web3 services.

## Features

- Implements CAT-egories using the KnowYourCat protocol on the Polygon chain
- Defines rules that allow users to be whitelisted and given an NFT access token for using specific Web3 services
- Helps prevent fraudulent activities and malicious behavior on the Web3 ecosystem
- Fast and low-cost transactions on the Polygon chain

## Usage

To use this smart contract, you'll need to deploy it on the Polygon chain using a compatible development environment such as Remix or Truffle. Once deployed, you can define your own CAT-egories and rules for specific addresses.

In order to use this smart contract in your DApp, you can implement custom logic inside `balanceOf(<address>)` of the dynamic NFT ERC-721. This will allow you to check if the address has the specific trait synced and if the sync time was more than one week ago.

For more information on the KnowYourCat protocol and CAT-egories, check out the official documentation at [knowyourcat.xyz](https://knowyourcat.xyz/).

## Reference

You can view the smart contract implemented CAT-egory on the Polygon chain at [`0xe3c6fd631043a0a1927c4681c736b778aa8f8fef`](https://polygonscan.com/address/0xe3c6fd631043a0a1927c4681c736b778aa8f8fef) on PolygonScan.

## Getting Started
1. [Install Foundry](https://book.getfoundry.sh/getting-started/installation)
2. Update dependencies (after deps installation)
    ```
    forge update
    git submodule update --init --recursive
    ```
3. Build project
    ```
    forge build
    ```
4. Run tests
    ```
    forge test
    ```

## License

This smart contract is licensed under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use, modify, and distribute it as needed.
