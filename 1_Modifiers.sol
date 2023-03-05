// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.0;

contract greatestNum{
    uint a;
    uint b;
    uint c;
    uint d;
    address owner;
    
    constructor(){
        owner = msg.sender;
    }

    modifier  onlyOwner{
        require (owner == msg.sender,"only owner can access");
        _;
    }

    function set (uint _a, uint _b, uint _c, uint _d) public onlyOwner{
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function get() public view onlyOwner returns (uint retval){
        if((a > b) && (a > c) && (a > d)){
            retval = a;
            return(retval);
        } 
        else if ((b > c) && (b > d) && (b > a)){
            retval = b;
            return(retval);
        } else if ((c > d) && (c > a) && (c > b)){
            retval = c;
            return(retval);
        } else {
            retval = d;
            return(retval);
        }
    }
}