// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
// there is no else conditional statment in the yul assembly 
contract AssemblyIf {
    function statment_yul(uint _x) public pure returns(uint _z){

        // if (x < 10) { _z = _x}
        assembly{
            if lt(_x , 10) { _z := _x}
        }
    }

    function yul_switch(uint _x) public pure returns(uint _z){
        assembly {
            switch _x 
            case 1 { _z := 10}
            case 2 { _z := 20}
            default { _z := 0}
        }
    }

}