// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.30;

interface IERC721 {
    // Read-only functions
    function ownerOf(uint256 id) external view returns (address);
    function balanceOf(address owner) external view returns (uint256);
    function isApprovedForAll(address owner, address operator) external view returns (bool);
    function getApproved(uint256 id) external view returns (address);

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

    // Token -> Owner Mapping
    mapping(uint256 token_ID => address owner) public ownerOf;

    // NFT balances of an address
    mapping(address owner => uint256 balance) public balanceOf;

    // Approved for all
    mapping(address owner => mapping (address operator => bool)) public isApprovedForAll;
    
    // Approved address for an NFT
    mapping(uint256 token_ID => address approved) public getApproved;

// Events

    // Logs Transfer events
    event Transfer(address indexed from, address indexed to, uint256 indexed id);

    // Logs changes in operator's approval for an owner's all NFT's
    event ApproveForAll(address indexed owner, address indexed operator, bool approved);

    // Logs changes in single NFT operator's approval
    event Approved(address indexed owner, address indexed spender, uint256 id);

// Functions

    // Mint NFTs to an address
    function mint(address receiver, uint256 id) external{
        require(ownerOf[id] == address(0), "Already Minted");
        ownerOf[id] = receiver;
        balanceOf[receiver] += 1;

        emit Transfer(address(0), receiver, id); 
    }

    // Set Approval For an owner's all NFT's
    function setApprovalForAll(address operator, bool approved) external payable{
        require(operator != address(0), "Invalid operator");
        isApprovedForAll[msg.sender][operator] = approved;

        emit ApproveForAll(msg.sender, operator, approved);
    }

    // Set Approval for a single NFT
    function approve(address approved, uint256 id) external payable{
        require(msg.sender == ownerOf[id] || isApprovedForAll[ownerOf[id]][msg.sender], "Not authorized");
        getApproved[id] = approved;

        emit Approved(ownerOf[id], approved, id);
    }

    // NFT Transfer Function
    function transferFrom(address from, address to, uint256 id) external payable{
        require(ownerOf[id] == msg.sender || isApprovedForAll[from][msg.sender] || getApproved[id] == msg.sender, "Not authorized");

        ownerOf[id] = to;
        balanceOf[from] -= 1;
        balanceOf[to] += 1;

        if (getApproved[id] != address(0)) {
            delete getApproved[id];
            emit Approved(ownerOf[id], address(0), id);
        }

        emit Transfer(from, to, id);
    }
}