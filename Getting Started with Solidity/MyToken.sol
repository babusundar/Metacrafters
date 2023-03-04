// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    
    constructor() ERC20("LearnSolidity", "LS") {
        _mint(msg.sender, 20000 * 10 ** uint(decimals()));
    }
}


// https://goerli.etherscan.io/token/0x0c776028e3fdd53b4281494a743b1a4601fb453c