// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./SoulBound.sol";
import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol";

// TODO :
// - Check if owner owns the token
// - What should the token URI point to?
// - Methods to equipt/dequipt
// - ERC1155 support
// - Data structure to store previous events
contract Profile is SoulBoundToken, Ownable {
  string private _baseURIextended;

  struct erc721Token {
    uint256 id;
    IERC721 nftContract;
  }

  erc721Token public ownerAvatar;
  erc721Token public offHand;
  erc721Token public mainEquipt;
  erc721Token public companion;
  erc721Token public chestPiece;
  erc721Token public headPiece;
  erc721Token public footwear;

  constructor() ERC721("Profile", "Profile") {}

  /// @notice helper function to handle URI redirections
  function setBaseURI(string memory baseURI_) external onlyOwner() {
      _baseURIextended = baseURI_;
  }

  /// @notice method override to return URI which lives on this contract
  function _baseURI() internal view virtual override returns (string memory) {
      return _baseURIextended;
  }
}
