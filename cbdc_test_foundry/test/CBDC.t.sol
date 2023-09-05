// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import "forge-std/console.sol";
//import {MomContract, MomContract2, MomContract3} from "../src/contractDeployer1.sol";
import {_1Rupee} from "../src/5_Rupee.sol";
import {_2Rupee} from "../src/5_Rupee.sol";
import {_5Rupee} from "../src/5_Rupee.sol";
import {_10Rupee} from "../src/5_Rupee.sol";
import {_20Rupee} from "../src/5_Rupee.sol";
import {_50Rupee} from "../src/5_Rupee.sol";
import {_100Rupee} from "../src/5_Rupee.sol";
import {_200Rupee} from "../src/5_Rupee.sol";
import {_500Rupee} from "../src/5_Rupee.sol";
import {GLDToken} from "../src/Rupees_ERC20.sol";
import {buy_ERupee} from "../src/Buy_ERupee.sol";
import {setController} from "../src/set_controller.sol";

contract testCBDC is Test {
    _1Rupee public OneRupee;
    _2Rupee public TwoRupee;
    _5Rupee public FiveRupee;
    _10Rupee public TenRupee;
    _20Rupee public TwentyRupee;
    _50Rupee public FiftyRupee;
    _100Rupee public HundredRupee;
    _200Rupee public TwoHundredRupee;
    _500Rupee public FiveHundredRupee;
    GLDToken public rupee;
    buy_ERupee public rupee_NFT;
    setController public controller;

    function setUp() external {
        vm.startPrank(address(1));
        OneRupee = new _1Rupee(msg.sender);
        TwoRupee = new _2Rupee(msg.sender);
        FiveRupee = new _5Rupee(msg.sender);
        TenRupee = new _10Rupee(msg.sender);
        TwentyRupee = new _20Rupee(msg.sender);
        FiftyRupee = new _50Rupee(msg.sender);
        HundredRupee = new _100Rupee(msg.sender);
        TwoHundredRupee = new _200Rupee(msg.sender);
        FiveHundredRupee = new _500Rupee(msg.sender);

        controller = new setController();
        rupee = new GLDToken(29600000000000000000000000000000);
        rupee_NFT = new buy_ERupee();
        rupee_NFT.setContracts(
            address(OneRupee),
            address(TwoRupee),
            address(FiveRupee),
            address(TenRupee),
            address(TwentyRupee),
            address(FiftyRupee),
            address(HundredRupee),
            address(TwoHundredRupee),
            address(FiveHundredRupee),
            address(rupee)
        );
        rupee.approve(address(rupee_NFT), 29899900000000000000000000000000);
        controller.setAddresses(
            address(rupee_NFT),
            address(OneRupee),
            address(TwoRupee),
            address(FiveRupee),
            address(TenRupee),
            address(TwentyRupee),
            address(FiftyRupee),
            address(HundredRupee),
            address(TwoHundredRupee),
            address(FiveHundredRupee)
        );
        controller.setControllerContract();
        vm.stopPrank();
    }

    function testNoteBuyAndSell() external {
        vm.startPrank(address(1));
        rupee_NFT.buy_With_note_denominations(888000000000000000000);
        rupee_NFT.transferAmount(888000000000000000000, address(2));
    }

    // function testtransfer() external {
    //     vm.startPrank(address(1));
    //     rupee_NFT.buy_With_note_denominations(2990000000000000000000);
    //     vm.expectRevert();
    //     FiveHundredRupee.transfer_rupee(address(1), address(2));
    // }

    // function testMint() external {
    //     vm.startPrank(address(1));
    //     rupee_NFT.buy_With_note_denominations(2990000000000000000000);
    //     vm.expectRevert();
    //     FiveHundredRupee.safeMint(address(1));
    // }

    function testNFTWithdrawal() external {
        vm.startPrank(address(1));
        rupee_NFT.buy_With_note_denominations(110000000000000000000);
        console.log("balance before withdrawal",rupee.balanceOf(address(1) ));
        rupee_NFT.convertNoteToERC20(10000000000000000000);
        console.log("balance after withdrawal",rupee.balanceOf(address(1) ));
    }
}
