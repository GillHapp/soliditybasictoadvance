// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract constractor{
    uint256 public immutable value;

    constructor (uint256 _value){
        value = _value;
    }
}