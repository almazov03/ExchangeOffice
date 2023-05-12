// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Pashcoin
 * @dev Implementation of the Pashcoin token.
 */

contract Pashcoin is ERC20 {
    constructor(uint256 totalSupply) ERC20("Pashcoin", "PCN") payable {
        _mint(msg.sender, totalSupply);
    }
}
