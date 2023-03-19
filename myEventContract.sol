//SPDX-License-Identifier:ISC

pragma solidity ^0.8.0;

contract myEventContract {
    event Log0(address indexed sender, string mymsg);
    event Log1(address indexed sender, string mymsg, uint indexed sequence);
    event Log2(
        address indexed sender,
        string myMsg,
        uint indexed sequence,
        uint indexed mydate
    );

    function myEventFn() public {
        emit Log0(msg.sender, "Logging message-1");
        emit Log1(msg.sender, "Logging message-2", 1);
        emit Log2(msg.sender, "Logging message-3", 2, 543134667);
    }
}
