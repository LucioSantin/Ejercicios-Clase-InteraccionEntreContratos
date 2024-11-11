// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";
import "../interfaces/IERC721.sol";
import "../interfaces/ILockableNFT.sol";

contract NFT is IERC721, ILockableNFT {

    address owner;
    address marketplaceAddress;

 struct LockState {
        bool isLocked;
        address lockedBy;
    }

    constructor(){
        owner = msg.sender;
        marketplaceAddress = 
    }

    /**
     * @notice Devuelve el estado del NFT.
     */
    function lockInfo(uint256 _tokenId) external view returns (LockState memory){

    }

    /**
     * @notice Fija el estado del NFT.
     * @dev Revertir si el msg.sender no es owner del contrato. Mensaje: "Not an owner"
     */
    function setIsLocked(uint256 _tokenId, bool _isLocked) external{

    }


    /**
     * @notice Asigna el address de marketplace
     * @dev Revertir si el msg.sender no es el owner del contrato
     * @dev Revertir si el _marketplace es el address 0
     */
    function setMarketplaceAddress(address _marketplace) external{
        require(msg.sender == owne, "Not the owner");
        marketplaceAddress = _marketplace;
    }

}