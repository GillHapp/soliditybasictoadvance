// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Keccak256 , bytes as a input , => return bytes32 
// Keccak256() , abi.encode , abi.encodepacked , => bytes32
//             , 
contract Hashing{

    // AAA, BBB != AA, ABBB

    function hashvalueWithEncde(string memory firstname, string memory latname) public pure returns (bytes32) {
        return keccak256(abi.encode(firstname, latname));
    }

    function hashvalueWithEncdePacked(string memory firstname, string memory latname) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(firstname, latname));
    }
    // AAA,BBB == AA,ABBB
}
