## Simple Template for Distribution Pools

**This is a simple template to create an NFT which uses Superfluid's Distribution Pools**

This template consists of:

-   **An ERC721 Smart contract**: Using OpenZeppelin's library to inherit an ERC721 contract
-   **Superfluid smart contract Imports**: Includes all the imports needed to create an NFT using Distribution Pools.
-   **Testing SetUp function**: Imports and a `SetUp` function including a Superfluid deployment to run tests on foundry.

## Usage

### Build

```shell
$ forge install
```

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

## Stack too Deep?

If your tests are complicated and require the deployment of the Superfluid Framework, you may run into "Stack Too Deep" error. Use the --via-ir flag by Foundry to get over that with the Solidity YUL optimizer.
