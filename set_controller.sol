pragma solidity ^0.8.16;

interface rupee {
    function changeController(address _addr) external;
}
contract setController {

    address public one_Rupee_contract = 0xD54d3F6C3b863f29D4FC1d1e2Ae0EAC27b13d2EF;
    address public two_Rupee_contract = 0xE5FdE1987e7Ec52b92E4f939c2B64299748a3D44;
    address public five_Rupee_contract = 0x8CEC8D539D468Cd19563174eFf7705067A9FD582;
    address public ten_Rupee_contract = 0xB16c4005ACAb743e1EF2039f4D3E1Fd693beA34d;
    address public twenty_Rupee_contract = 0x7D148294204E94e9592bE603C15e231b67Fb1d87;
    address public fifty_Rupee_contract = 0xCa7dd6c3Edf65eeC61CeC7212df319610A72e479;
    address public one_hundred_Rupee_contract = 0xe0C8919C807D262dEB2957eEfA512FE383094C83;
    address public two_hundred_Rupee_contract = 0xdF035655Ff59008A07F46E16B1B9788FE4169eA2;
    address public five_hundred_Rupee_contract = 0xec4AE94411412cBeD68C531A5dF7a0A7A1534dE3;
    address public rupee_contract_ERC20;

    function setControllerContract(address _controller) public {
        rupee RupeeContract = rupee(one_Rupee_contract);
        RupeeContract.changeController(_controller);
        rupee RupeeContract1 = rupee(two_Rupee_contract);
        RupeeContract1.changeController(_controller);
        rupee RupeeContract2 = rupee(five_Rupee_contract);
        RupeeContract2.changeController(_controller);
        rupee RupeeContract3 = rupee(ten_Rupee_contract);
        RupeeContract3.changeController(_controller);
        rupee RupeeContract4 = rupee(twenty_Rupee_contract);
        RupeeContract4.changeController(_controller);
        rupee RupeeContract5 = rupee(fifty_Rupee_contract);
        RupeeContract5.changeController(_controller);
        rupee RupeeContract6 = rupee(one_hundred_Rupee_contract);
        RupeeContract6.changeController(_controller);
        rupee RupeeContract7 = rupee(two_hundred_Rupee_contract);
        RupeeContract7.changeController(_controller);
        rupee RupeeContract8 = rupee(five_hundred_Rupee_contract);
        RupeeContract8.changeController(_controller);


    }

}