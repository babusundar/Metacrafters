// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.0;

contract ViewPurePayable{
    uint a;
    // uint b;
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function fnView(uint _a) public view returns (uint){
        return (a + _a);
    }

    function fnPure(uint _b) public pure returns (uint){
        // return (b * _b); // pure canot read from state variable
        return (10 * _b);
    }

    function fnBalance(address _c) external view returns(uint){
        return _c.balance;
    }

}
