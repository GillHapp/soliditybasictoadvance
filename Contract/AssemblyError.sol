// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AssemblyError {
    function yulError(uint _x) public pure {
        assembly{
            if gt(_x,10) {revert(0,0)}
            // _;
        }
    }
    }