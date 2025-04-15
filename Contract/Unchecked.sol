// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract UncheckedMath {
    function add(uint8 x, uint8 y) external pure returns (uint8) {
        // 927 gas
        // return x + y;  // 4 , 2,3 => error

        // 	748 gas
        unchecked {
            return x + y;
        }// 4 , 2,3 => 1
    }

}
