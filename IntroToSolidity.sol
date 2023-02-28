//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract IntroToSolidity {

    uint256 num;
    int intnum;
    string mystring ;
    bytes32 public myByte32 = "Hello there, ";
    address public myremix_address ;
    enum myenum {Morning, Afternoon, Evening, Night}
    myenum choice;

    struct myStruct {
        uint256 myId;
        string myName;
    }

    

    /* with uint */
    function set(uint256 _num) public{
        num = _num;
    }
    function getnum() public view returns(uint256 ){
        return num;
    }

    /* with enum */
    function setChoice( myenum _myenum) public {
        choice = _myenum;
    }

    function getChoice() public view returns(myenum){
        return choice;
    }

    /* with string */

    function setStr() public{
        mystring = "Learning Solidity!";
    }

    function getStr() public  view returns (string memory){
        return mystring;
    }

    // with address
    function getAddr() public{
        myremix_address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }

    function setAddr() public view returns(address){
        return myremix_address;
    }
    // Struct

    myStruct public mystruct = myStruct(1,"My name");
}