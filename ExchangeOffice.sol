// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


/**
 * @title TokenExchange
 * @dev A contract for exchanging ERC20 tokens.
 */
 
contract Exchange is Ownable {
    using SafeERC20 for IERC20;

    mapping(IERC20 => uint256) private rates;

    function setRate(IERC20 token, uint256 rate) external onlyOwner {
        rates[token] = rate;
    }

    function getRate(IERC20 token) external view returns (uint256) {
        return rates[token];
    }

    function buy(IERC20 token, uint256 amount) external {
        token.safeTransfer(msg.sender, amount);
    }

    function sell(IERC20 token, uint256 amount) external payable {
        token.safeTransferFrom(msg.sender, address(this), amount);
        require(msg.value == 0, "ETH not accepted");
        require(payable(msg.sender).send(rates[token] * amount), "Failed to send ETH");
    }

    function balance(IERC20 token) external view returns (uint256) {
        return token.balanceOf(address(this));
    }

    function destroy(address payable to) external onlyOwner {
        selfdestruct(to);
    }
}
