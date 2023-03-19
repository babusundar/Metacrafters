//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract EventContract {
    uint totalSum;
    uint avlAmt;
    uint sequence;

    constructor() {
        avlAmt = 10000;
    }

    event depositAmt(
        address indexed sender,
        uint indexed sequence,
        uint avlAmt,
        uint depoAmt,
        uint total
    );

    event withdrawAmt(
        address indexed sender,
        uint indexed sequence,
        uint withdrawAmt,
        uint total
    );

    function depoAmt(uint _depoAmt) public payable {
        sequence = sequence + 1;
        emit depositAmt(
            msg.sender,
            sequence,
            totalSum > 0 ? totalSum : avlAmt,
            _depoAmt,
            avlAmt + _depoAmt
        );
        avlAmt = totalSum = avlAmt + _depoAmt;
    }

    function wdAmt(uint _wdAmt) public payable {
        sequence = sequence + 1;
        emit withdrawAmt(
            msg.sender,
            sequence,
            totalSum - _wdAmt,
            avlAmt - _wdAmt
        );
        avlAmt = totalSum = avlAmt - _wdAmt;
    }
}
