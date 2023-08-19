// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    constructor() ERC721("MyNFT", "MNFT") {
        _safeMint(_msgSender(),0);
    }

    function _baseURI() internal view override virtual returns (string memory) {
        return "hai/";
    }
}