// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Harshith is ERC20
{
    address public Kohli;

    modifier onlyKohli() 
    {
        require(msg.sender == Kohli, "Only the contract King can perform this action");
        _;
    }

    constructor() ERC20("Harshith", "Hs")
    {
        Kohli = msg.sender;
    }

    function mintToken(address account, uint256 amount) external onlyKohli
    {
        _mint(account, amount);
    }

    function burnToken(address account, uint256 amount) external 
    {
        require(msg.sender == account, "You can only burn your own tokens");
        _burn(account, amount);
    }

    function transferToken(address recipient, uint256 amount) external returns (bool) 
    {
        return transfer(recipient, amount);
    }
}
