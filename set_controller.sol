pragma solidity ^0.8.16;

interface rupee {
    function changeController(address _addr) external;
}
contract setController {

     address _1Rupee = 0x7D421fac57AC06c3de10A920B3a117158CB76d21;
        address _2Rupee = 0xDf4e6E2202791Ea345169C3f0B331a1609b763c8;
        address _5Rupee = 0x53388347ad7b9340000ccED2652E7784C9E918b7;
        address _10Rupee = 0x0Da83D04e876A5d34e81efc9642c156d731A44D8;
        address _20Rupee = 0xb8C68697b4aEdA0A7836739D1AFeB5b037a8bb5b;
        address _50Rupee = 0x16a0EF5D17F3218d420140FD5053c125d3fDc262;
        address _100Rupee = 0xf987904aE9e81775E28C67699C5Fc5B789C0e806;
        address _200Rupee = 0x0b2E3b7a976DB7dD38eae053d20a1B494a0d841e;
        address _500Rupee = 0x15bB4a3F7B37A173dBe69d59A399d7641D06d73a;
        //address _rupeeContract_ERC20 = 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B;
    address public rupee_contract_ERC20;

    function setControllerContract(address _controller) public {
        rupee RupeeContract = rupee(_1Rupee);
        RupeeContract.changeController(_controller);
        rupee RupeeContract1 = rupee(_2Rupee);
        RupeeContract1.changeController(_controller);
        rupee RupeeContract2 = rupee(_5Rupee);
        RupeeContract2.changeController(_controller);
        rupee RupeeContract3 = rupee(_10Rupee);
        RupeeContract3.changeController(_controller);
        rupee RupeeContract4 = rupee(_20Rupee);
        RupeeContract4.changeController(_controller);
        rupee RupeeContract5 = rupee(_50Rupee);
        RupeeContract5.changeController(_controller);
        rupee RupeeContract6 = rupee(_100Rupee);
        RupeeContract6.changeController(_controller);
        rupee RupeeContract7 = rupee(_200Rupee);
        RupeeContract7.changeController(_controller);
        rupee RupeeContract8 = rupee(_500Rupee);
        RupeeContract8.changeController(_controller);


    }

}