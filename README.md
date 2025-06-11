# Tokens Implementation
## Greetings!
- This repository contains some token implementations.
- The solidity files with `create` prefix in name are the empty templates of the corresponding file names without the prefix (which are complete implementations).
- Take reference from the complete implmentations and start coding.
- `git clone https://github.com/nikillxh/token-frenzy` & get started.
## ERC-20 Token
### Files
- **ERC-20: Token Standard:** https://eips.ethereum.org/EIPS/eip-20
- `createERC20.sol` file contains the empty function definitions which need to be implemented.
- `ERC20.sol` file contains the function implementations.

### Variables, Events & Functions
- **Variables:** `overseer`, `name`, `symbol`, `decimals`, `totalSupply`
- **Maps:** `balances`, `allowances`
- **Events:** `Transfer`, `Approval`
- **Getter functions:** 
    - `balanceOf(address account)`
    - `allowance(address from, address to)`
- **Functions:** 
    - `constructor(string memory _name, string memory _symbol)`
    - `mint(address to, uint256 amount)`
    - `approve(address to, uint256 amount)`
    - `transferHelp(address from, address to, uint256 amount)`
    - `transfer(address to, uint256 amount)`
    - `transferFrom(address from, address to, uint256 amount)`

## ERC-721 Token (Minimal)
### Files
- **ERC-721: Token Standard:** https://eips.ethereum.org/EIPS/eip-721
- `createERC721min.sol` file contains the interface to be implemented.
- `ERC721min.sol` file contains implementation.
- Implementation excluding `safeTransferFrom`, `onERC721Received` functions.
### Variables, Events & Functions
- **Map Variables:** `ownerOf`, `balanceOf`, `isApprovedForAll`, `getApproved`
- **Events:** `Transfer`, `ApproveForAll`, `Approved`
- **Functions:**
    - `mint(address receiver, uint256 id)`
    - `setApprovalForAll(address operator, bool approved)`
    - `approve(address approved, uint256 id)`
    - `transferFrom(address from, address to, uint256 id)`