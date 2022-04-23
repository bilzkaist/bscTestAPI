// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Import ERC1155 token contract from Openzeppelin

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract NFTCardContract is ERC1155, Ownable {

    uint256 public constant ARTWORK = 0;  
    uint256 public constant PHOTO  = 1;

    constructor() ERC1155("https://7mo2aen51dyh.usemoralis.com/{id}.json")//MetaData Link
    {
        _mint(msg.sender, ARTWORK, 1, "");
        _mint(msg.sender, PHOTO, 2, "");
    }

    function mintNFTCard(address account, uint256 id, uint256 amount) public onlyOwner {
        _mint(account, id, amount, "");
    }

    function burnNFTCard(address account, uint256 id, uint256 amount) public {
        require(msg.sender == account);
        _burn(account, id, amount);        
    }

}