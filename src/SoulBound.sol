// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

/// @title SoulBound Token
/// @author 0xMouseLess
/// @dev SoulBound is only given to EOA, and each can only hold a maximum of 1
abstract contract SoulBoundToken is ERC721 {
  /// @notice Error is thrown when trying to transfer a soulbound nft
  error SoulBound();

  /// @dev Keeping track if an addres has already minted
  mapping(address => bool) private hasMinted;

  /// @dev Counter for the next tokenId
  uint256 internal nextTokenId = 1;

  /// @notice mints a new SoulBound NFT to msg.sender
  function mint() public {
    require(msg.sender == tx.origin, "msg.sender is a smart contract, SoulBound token can only be held by an eoa");
    require(!hasMinted[msg.sender], "msg.sender already has a soulbounded NFT");
    hasMinted[msg.sender] = true;

    super._safeMint(msg.sender, nextTokenId++);
  }

  /// @notice returns the total number of minted soulbound tokens
  function totalSupply() public view returns (uint256) {
    return nextTokenId - 1;
  }

  /// --- Disabling Transfer Of Soulbound NFT --- ///

  /// @notice Function disabled as cannot transfer a soulbound nft
  function safeTransferFrom(
    address, 
    address, 
    uint256,
    bytes memory
  ) public pure override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function safeTransferFrom(
    address, 
    address, 
    uint256 
  ) public pure override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function transferFrom(
    address, 
    address, 
    uint256
  ) public pure override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function approve(
    address, 
    uint256
  ) public pure override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function setApprovalForAll(
    address, 
    bool
  ) public pure override {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function getApproved(
    uint256
  ) public pure override returns (address) {
    revert SoulBound();
  }

  /// @notice Function disabled as cannot transfer a soulbound nft
  function isApprovedForAll(
    address, 
    address
  ) public pure override returns (bool) {
    revert SoulBound();
  }
}
