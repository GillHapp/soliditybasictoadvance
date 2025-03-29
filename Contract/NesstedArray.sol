// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract NesstedArray{

uint256[] public aa ;

function examples() external pure {
        // create array in memory, only fixed size can be created
        uint256[] memory a = new uint256[](5);

        // create a nested array in memory
        // b = [[1, 2, 3], [4, 5, 6]]
        uint256[][] memory b = new uint256[][](2); // [[],[]]
        for (uint256 i = 0; i < b.length; i++) {
            b[i] = new uint256[](3); // [[0,0,0],[0,0,0]]
        }

        b[0][0] = 1;  // [[1,0,0],[0,0,0]]
        b[0][1] = 2;  // [[1,2,0],[0,0,0]]
        b[0][2] = 3;   // [[1,2,3],[0,0,0]]
        b[1][0] = 4;  // [[1,2,3],[1,0,0]]
        b[1][1] = 5;  // [[1,2,3],[1,2,0]]
        b[1][2] = 6;   // [[1,2,3],[1,2,3]]
    }
}