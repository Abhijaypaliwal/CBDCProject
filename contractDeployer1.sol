pragma solidity ^0.8.19;

import "./5_Rupee.sol";
contract MomContract {

    //DaughterContract public daughter;
    _1Rupee public OneRupee;
    _2Rupee public TwoRupee;
    _5Rupee public FiveRupee;
    _10Rupee public TenRupee;
    


    constructor() public {
        OneRupee = new _1Rupee(msg.sender);
        TwoRupee = new _2Rupee(msg.sender);
        FiveRupee = new _5Rupee(msg.sender);
        TenRupee = new _10Rupee(msg.sender);
       
       
    }

    
}
