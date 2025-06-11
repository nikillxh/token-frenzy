// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.30;

interface IERC721 {
    // Read-only functions (Uncomment these functions)
    // function ownerOf(uint256 id) external view returns (address);
    // function balanceOf(address owner) external view returns (uint256);
    // function isApprovedForAll(address owner, address operator) external view returns (bool);
    // function getApproved(uint256 id) external view returns (address);

    // State-changing functions
    function mint(address receiver, uint256 id) external;
    function setApprovalForAll(address operator, bool approved) external payable;
    function approve(address approved, uint256 id) external payable;
    function transferFrom(address from, address to, uint256 id) external payable;

    // Events
    // event Transfer(address indexed from, address indexed to, uint256 indexed id);
    // event ApproveForAll(address indexed owner, address indexed operator, bool approved);
    // event Approved(address indexed owner, address indexed spender, uint256 id);
}

contract ERC721 is IERC721 {

// Variables

    // Write mapping variables here

// Events

    // Write Events here

// Functions

    // Mint NFTs to an address
    function mint(address receiver, uint256 id) external{}

    // Set Approval For an owner's all NFT's
    function setApprovalForAll(address operator, bool approved) external payable{}

    // Set Approval for a single NFT
    function approve(address approved, uint256 id) external payable{}

    // NFT Transfer Function
    function transferFrom(address from, address to, uint256 id) external payable{}
}