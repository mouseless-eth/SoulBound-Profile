// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

abstract contract SoulBound is ERC721 {
  // @notice Error is thrown when trying to transfer a Soulbound token
  error SoulBound();

  
}
