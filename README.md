# Solidity Template

This is a basic hardhat template to get you started writing and compiling contract.
The template is configured with some sensible defaults but tries to stay minimal.
Many more plugins are available in the hardhat ecosystem, add them as you go.

Uses

- [Hardhat](https://github.com/nomiclabs/hardhat): compile and run the smart contracts on a local development network
- [TypeChain](https://github.com/ethereum-ts/TypeChain): generate TypeScript types for smart contracts
- [Ethers](https://github.com/ethers-io/ethers.js/): renowned Ethereum library and wallet implementation
- [Waffle](https://github.com/EthWorks/Waffle): tooling for writing comprehensive smart contract tests
- [Solhint](https://github.com/protofire/solhint): linter
- [Prettier Plugin Solidity](https://github.com/prettier-solidity/prettier-plugin-solidity): code formatter

This is a GitHub template, which means you can reuse it as many times as you want. You can do that by clicking the "Use this
template" button at the top of the page.

## Usage

### Pre Requisites

Before running any command, make sure to install dependencies:

```sh
yarn install
```

### Compile

Compile the smart contracts with Hardhat:

```sh
yarn compile
```

### Test

Run the Mocha tests:

```sh
yarn test
```

### Deploy contract to netowrk (requires Mnemonic and infura API key)

```
npx hardhat run --network rinkeby ./scripts/deploy.ts
```

### Validate a contract with etherscan (requires API ke)

```
npx hardhat verify --network <network> <DEPLOYED_CONTRACT_ADDRESS> "Constructor argument 1"
```

### NFT Images stores on IPFS with JSON metadata files

The Metadata for NFTS for this project is stored in the following JSONKeeper Files:
<https://jsonkeeper.com/b/NUIJ>
<https://jsonkeeper.com/b/8CQI>
<https://jsonkeeper.com/b/FG5W>
<https://jsonkeeper.com/b/Z28K>
<https://jsonkeeper.com/b/NUCS>
<https://jsonkeeper.com/b/E5LH>
<https://jsonkeeper.com/b/4RFY>
<https://jsonkeeper.com/b/SI9O>
<https://jsonkeeper.com/b/Q0S0>
<https://jsonkeeper.com/b/AD8T>
<https://jsonkeeper.com/b/PCGI>
<https://jsonkeeper.com/b/UTV4>
<https://jsonkeeper.com/b/YEVH>
<https://jsonkeeper.com/b/3HJ5>
<https://jsonkeeper.com/b/XG87>

### Added plugins

- Gas reporter [hardhat-gas-reporter](https://hardhat.org/plugins/hardhat-gas-reporter.html)
- Etherscan [hardhat-etherscan](https://hardhat.org/plugins/nomiclabs-hardhat-etherscan.html)

## License

MIT
