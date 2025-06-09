// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.30;

contract ERC20 {
// Variables

    // Owner, initialized in constructor and an immutable var
    address public immutable overseer;

    // Constructor will initialize these token parameters
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply = 0;

// Maps & Events

    // Balances of users
    mapping(address => uint256) public balances;

    // Smart contract allowance
    mapping(address => mapping(address => uint256)) public allowances;

    // Event maps
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

// Getter functions

    // Check balance of addresses
    function balanceOf(address account)
    public view returns (uint256) {}

    // View allowances between accounts
    function allowance(address from, address to) 
    public view returns (uint256) {}

// Implement these functions

    // Constructing initial variables
    constructor(string memory _name, string memory _symbol) {}

    // Minting function only accessible to owner of this contract
    function mint(address to, uint256 amount)
    public returns (bool) {}

    // Allows account owner to set the allowance
    function approve(address to, uint256 amount)
    public returns (bool) {}

    // Token Transfer code snippet
    function transferHelp(address from, address to, uint256 amount)
    internal returns (bool) {}

    // Classic token transfer function
    function transfer(address to, uint256 amount)
    public returns (bool) {}

    // Owner cross account transfer function
    function transferFrom(address from, address to, uint256 amount)
    public returns (bool) {}
}