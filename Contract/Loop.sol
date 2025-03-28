// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Loop {
    uint256[] public forLoopResults;
    uint256 public whileLoopCounter;

    function executeForLoop() public {
        delete forLoopResults; // Reset the array before execution

        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                continue; // Skip 3
            }
            if (i == 5) {
                break; // Stop at 5
            }
            forLoopResults.push(i);
        }
    }

    function executeWhileLoop() public {
        whileLoopCounter = 0; // Reset the counter

        while (whileLoopCounter < 10) {
            whileLoopCounter++;
        }
    }

    function getForLoopResults() public view returns (uint256[] memory) {
        return forLoopResults;
    }
}
