// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


contract MyNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIds;
    
    constructor() ERC721("Arman", "ARM"){

    }
    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns(uint256){
        _tokenIds++;

        uint256 newItemId = _tokenIds;

        _mint( recipient, newItemId);

        _setTokenURI(newItemId,tokenURI); //registering my itemid through the function in storage.sol

        return newItemId;
    }
}


// we have to connect alchemy with our blockchain with metamask so that when we deploy our contract the fee and transaction occur in our metamask wallet only