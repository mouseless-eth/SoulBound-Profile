// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./SoulBound.sol";
import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import "openzeppelin-contracts/access/Ownable.sol";

contract Profile is SoulBound, ERC721, Ownable {
  constructor() ERC721("Profile", "Profile") {

  }
}

