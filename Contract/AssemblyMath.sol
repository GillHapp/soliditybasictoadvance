// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AssemblyhMath{
//    function memoryLet() public pure returns (uint256 result) {
//     assembly {
//         let ptr := mload(0x40)     // Get safe memory pointer (ex: 0x80)
//         mstore(ptr, 99)            // Store 99 at that spot
//         let val := mload(ptr)      // Read 99 from that spot
//         result := val              // Return it
//     }

// }
    // Basic addition
    function yul_add(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := add(a, b)
        }
    }

    // Basic subtraction
    function yul_sub(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := sub(a, b)
        }
    }

    // Basic multiplication
    function yul_mul(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := mul(a, b)
        }
    }

    // Basic division
    function yul_div(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := div(a, b)
        }
    }

    // Modulo (remainder)
    function yul_mod(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := mod(a, b)
        }
    }

    // Exponentiation
    function yul_exp(uint256 base, uint256 power) public pure returns (uint256 result) {
        assembly {
            result := exp(base, power)
        }
    }

    // Signed addition (int256)
    function yul_signed_add(int256 a, int256 b) public pure returns (int256 result) {
        assembly {
            result := add(a, b)
        }
    }

    // Signed division (use `sdiv`)
    function yul_signed_div(int256 a, int256 b) public pure returns (int256 result) {
        assembly {
            result := sdiv(a, b)
        }
    }

    // Bitwise AND
    function yul_and(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := and(a, b)
        }
    }

    // Bitwise OR
    function yul_or(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := or(a, b)
        }
    }

    // Bitwise XOR
    function yul_xor(uint256 a, uint256 b) public pure returns (uint256 result) {
        assembly {
            result := xor(a, b)
        }
    }

    // Bitwise NOT
    function yul_not(uint256 a) public pure returns (uint256 result) {
        assembly {
            result := not(a)
        }
    }


}