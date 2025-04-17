// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AssemblyLoops{
    function AddForLoo() pure public returns(uint _z){
        assembly {
            for { let i := 0 } lt(i, 10) { i := add(i, 1) } { _z := add(_z, i) }
        }

    // {} => asing
    // for ( uint i =0 ; i <10 ; i++){
        // _z += i
    // }
    // 1+2+3 ..+9
    }
}