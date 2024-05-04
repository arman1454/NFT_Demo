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
    
        uint256 newItemId = _tokenIds.current()
    }
}