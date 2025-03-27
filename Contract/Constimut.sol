// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Constants {

     address public immutable myAddr = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public immutable myUint;

    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS =
        0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public constant MY_UINT = 123;


    constructor(uint256 _myUint) {
        // myAddr = msg.sender;
        myUint = _myUint;
    }
    
}
