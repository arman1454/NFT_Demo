// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol"

import "@openzeppelin/contracts/access/Ownable.sol"

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"


contract MyNFT is ERC721URIStorage, Ownable {
    //have to use a counter here Counter.counter private _tokenIds;

    constructor() ERC721("Arman", "ARM"){}

    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns(uint256){
        //here have to increment that Id _tokenIds.increment();
    
        uint256 newItemId = _tokenIds.current();

        _mint( recipient, newItemId);

        _setTokenURI(newItemId,tokenURI) //registering my itemid through the function in storage.sol

        return newItemId; //finally returning the NFT id
    }
}


// we have to connect alchemy with our blockchain with metamask so that when we deploy our contract the fee and transaction occur in our metamask wallet only