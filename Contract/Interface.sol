// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


contract Counter {
    uint256 public  count;

    function increment() external {
        count += 1;
    }

}


