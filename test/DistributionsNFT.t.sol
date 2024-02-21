pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "ds-test/test.sol";

import "../src/GdaNFTContract.sol";
import {ISuperfluid, ISuperToken, ISuperApp } from "@superfluid-finance/ethereum-contracts/contracts/interfaces/superfluid/ISuperfluid.sol";
import {IConstantFlowAgreementV1} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/agreements/IConstantFlowAgreementV1.sol";
import {ERC1820RegistryCompiled} from "@superfluid-finance/ethereum-contracts/contracts/libs/ERC1820RegistryCompiled.sol";
import { TestGovernance, Superfluid, ConstantFlowAgreementV1, InstantDistributionAgreementV1, IDAv1Library, SuperTokenFactory} from "@superfluid-finance/ethereum-contracts/contracts/utils/SuperfluidFrameworkDeploymentSteps.sol";
import { SuperfluidFrameworkDeployer } from "@superfluid-finance/ethereum-contracts/contracts/utils/SuperfluidFrameworkDeployer.sol";
import {ISETH} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/tokens/ISETH.sol";
import {ISuperfluidPool} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/agreements/gdav1/ISuperfluidPool.sol";

contract GdaNFTContractTest is Test {

    using SuperTokenV1Library for ISETH;

    GdaNFTContract public gdaNFTContract;
    ISuperfluid public host;
    ISETH public seth;
    address public account1;
    address public account2;
    address public account3;
    ISuperfluidPool public pool;

    struct Framework {
        TestGovernance governance;
        Superfluid host;
        ConstantFlowAgreementV1 cfa;
        InstantDistributionAgreementV1 ida;
        IDAv1Library.InitData idaLib;
        SuperTokenFactory superTokenFactory;
    }

    SuperfluidFrameworkDeployer.Framework public sf;

    function setUp() public {
        vm.etch(ERC1820RegistryCompiled.at, ERC1820RegistryCompiled.bin);

        SuperfluidFrameworkDeployer sfd = new SuperfluidFrameworkDeployer();
        sfd.deployTestFramework();
        sf = sfd.getFramework();
        account1 = vm.addr(1);
        account2 = vm.addr(2);
        account3 = vm.addr(3);

        seth = sfd.deployNativeAssetSuperToken("fETHx", "FETHX");

        /*vm.deal(account1, 100000000000000000000000000000);
        vm.deal(account2, 100000000000000000000000000000);
        vm.deal(account3, 100000000000000000000000000000);
        gdaNFTContract = new GdaNFTContract("GdaNFT", "GdaNFT",seth,1000000000000,100000);
        pool= gdaNFTContract.pool();*/
    }
    
}