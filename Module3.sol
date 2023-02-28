//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

contract Module3{
    uint public eth;
    uint public weival;
    uint public gweival;
    bool public weibool;
    bool public gweibool;


    function submitEther(uint _eth) public {
        eth = _eth;
    }

    function getWeiValue() public returns (uint) {
        weival = eth * (10**18);
        return weival;
    }

    function getGweiValue() public returns (uint){
        gweival = eth * (10**9);
        return gweival;
    }

    //checking the bool way from the given o/p

    function CheckWei() public returns (bool){
        weibool = weival == 1e18;
        return weibool;
    }

    function CheckGwei() public returns (bool){
        gweibool = gweival == 1e9;
        return gweibool;
    }
}