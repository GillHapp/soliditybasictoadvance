// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
//yul
contract AssemblyVariable {
    function yul_variables() public pure returns(uint256 y){

        assembly{
           let x := 123
            y := 234
        }


        // x does not exist after that assembly block
    }
}