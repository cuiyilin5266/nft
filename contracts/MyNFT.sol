pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155URIStorage.sol";

contract MyNFT is ERC1155{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() ERC1155("MyNFT") {}

    function mint(uint256 amount) public returns (uint256) 
    {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId, amount, "");
        return newItemId;
    }
}