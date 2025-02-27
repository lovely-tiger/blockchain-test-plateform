//SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Erc20Token is ERC20 {
    constructor(
      string memory name, 
      string memory symbol, 
      uint8 decimals
    ) ERC20(name, symbol) {
        _setupDecimals(decimals);
    }
    
    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
