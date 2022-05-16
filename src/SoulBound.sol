// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC721/IERC721.sol";

abstract contract SoulBoundToken is IERC721 {
  /// @notice Error is thrown when trying to transfer a soulbound nft
  error SoulBound();

  /// --- Disabling Transfer Of Soulbound NFT --- ///

  /// @notice Function disabled as cannot transfer a soulbound nft
  function safeTransferFrom(
    address _from, 
    address _to, uint256 
    _tokenId, 
    bytes calldata data
  ) external override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function safeTransferFrom(
    address _from, 
    address _to, 
    uint256 _tokenId
  ) external override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function transferFrom(
    address _from, 
    address _to, 
    uint256 _tokenId
  ) external override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function approve(
    address _approved, 
    uint256 _tokenId
  ) external override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function setApprovalForAll(
    address _operator, 
    bool _approved
  ) external override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function getApproved(
    uint256 _tokenId
  ) external view override returns (address) {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function isApprovedForAll(
    address _owner, 
    address _operator
  ) external view override returns (bool) {
    revert SoulBound();
  }
}
