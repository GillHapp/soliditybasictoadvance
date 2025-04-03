// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FunctionModifier {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier OnlyOwner(){
        require(owner == msg.sender,"msg.sender is not a owner");
        _;
    }

    modifier ZeroAddress(address _addr){
        require(_addr != address(0),"Zero Address is not allowed");
        _;
    }

    function changeOwner(address _newOwner) public OnlyOwner ZeroAddress(_newOwner) {
        owner = _newOwner;
    }

}