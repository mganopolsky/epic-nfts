// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";


contract MarinasFirstNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    // counter of the unique NFTs we're generating
    Counters.Counter private _tokenIds;

    // IPFS URIs of the tokenIDs we're mapping to
    string[] private nftURIs;
    
    // pass in the NFT Token and it's 
    constructor() ERC721 ("CodeArtNFT", "ART") {
        console.log("This is Marina's NFT Contract. YEET");

        nftURIs.push("https://jsonkeeper.com/b/NUIJ");
        nftURIs.push("https://jsonkeeper.com/b/8CQI");
        nftURIs.push("https://jsonkeeper.com/b/FG5W");
        nftURIs.push("https://jsonkeeper.com/b/Z28K");
        nftURIs.push("https://jsonkeeper.com/b/NUCS");
        nftURIs.push("https://jsonkeeper.com/b/E5LH");
        nftURIs.push("https://jsonkeeper.com/b/4RFY");
        nftURIs.push("https://jsonkeeper.com/b/SI9O");
        nftURIs.push("https://jsonkeeper.com/b/Q0S0");
        nftURIs.push("https://jsonkeeper.com/b/AD8T");
        nftURIs.push("https://jsonkeeper.com/b/PCGI");
        nftURIs.push("https://jsonkeeper.com/b/UTV4");
        nftURIs.push("https://jsonkeeper.com/b/YEVH");
        nftURIs.push("https://jsonkeeper.com/b/3HJ5");
        nftURIs.push("https://jsonkeeper.com/b/XG87");
    }

    function maxTotalSupply() public view returns (uint256) {
        return nftURIs.length;
    }

    function makeCodeArtNFT() public {
        // get the curent tokenId. We start at 0
        uint256 newItemId = _tokenIds.current();

        // get the array index of the URI
        // we will only generate enough NFTs as there are unique images
        // uint256 index = newItemId % (nftURIs.length - 1);
        require(newItemId < nftURIs.length, "Exceeded max NFT count! NO MORE MINTS!");

        // mint the actual NFT to the sender using msg.sender
        _safeMint(msg.sender, newItemId);

        // set the NFT's data
        _setTokenURI(newItemId, nftURIs[newItemId]);

        console.log("An NFT %s has been minted to %s", newItemId, msg.sender);

        // increment the token counter
        _tokenIds.increment();
    }

    
}