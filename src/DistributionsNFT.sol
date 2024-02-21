pragma solidity ^0.8.13;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {SuperTokenV1Library} from "@superfluid-finance/ethereum-contracts/contracts/apps/SuperTokenV1Library.sol";
import {ISuperfluidPool, PoolConfig} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/agreements/gdav1/IGeneralDistributionAgreementV1.sol";
import {ISETH} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/tokens/ISETH.sol";

/**
 * @title GdaNFTContract
 * @author Superfluid
 * The GdaNFTContract provides an easy to use ERC721 contract that mints NFTs for a given price.
 * In the same transaction, the contract will also upgrade the native token to super token and
 * distribute the flow to the pool. The flow will be distributed the pool members, who are no other than
 * the NFT minters.
 */
contract DistributionsNFT is ERC721 {
    
}