// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 * Based on https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/examples/SimpleToken.sol
 */
contract SimpleToken is ERC20 {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimalPlaces,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        _decimalPlaces = decimalPlaces;
        _mint(msg.sender, initialSupply);
    }

    uint8 private _decimalPlaces;

    function decimals() public view override returns (uint8) {
        return _decimalPlaces;
    }
}
