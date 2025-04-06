// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FallBack{

    receive() external payable { } // when only ether trasfered 
    fallback() external payable{} // when ether as well data trasferd 

    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }
}