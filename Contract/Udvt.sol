// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract WithoutUDVT {
    // ❌ Using primitive types (Mistakes can happen!)
    uint64 public age;
    uint64 public weight;

    // ❌ No strict type safety (Parameters can be swapped by mistake)
    function setDetails(uint64 _age, uint64 _weight) public {
        age = _weight;
        weight = _age;
    }

    // // ❌ Mistake: Age and Weight swapped! But Solidity won't stop it
    // function wrongExample() public {
    //     setDetails(70, 25); // ❌ Wrong order (Age should be 25, Weight should be 70)
    // }

    // // ✅ Correct Usage
    // function correctExample() public {
    //     setDetails(25, 70); // ✅ Correct order
    // }
}