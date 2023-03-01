// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.0;

contract myFunctions{
    uint a;
    uint b;

    constructor(uint _a, uint _b){
        a = _a;
        b = _b;
    }

    function mySum() private view returns(uint){
        return a+b;
    }

    function getMySum() external view returns(uint){
        return mySum();
    }

    function mySub() external view returns(uint){
        return a-b;
    }

    function myMul() internal view returns(uint){
        uint d = a*b;
        return d;
    }

    function getMyMul() external view returns(uint){
        return myMul();
    }
    
    function myDiv() public view returns(uint){
        return a/b;
    }
}