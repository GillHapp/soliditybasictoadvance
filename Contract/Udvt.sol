// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// ✅ User-Defined Value Types (UDVTs) for strict type safety
type Age is uint64;
type Weight is uint64;

contract WithUDVT {
    // ✅ State Variables using UDVTs
    Age public age;
    Weight public weight;

    // ✅ Function with strict type safety (Prevents mistakes)
    function setDetails(Age _age, Weight _weight) public {
        age = _age;
        weight = _weight;
    }

    // ✅ Getter Functions to Retrieve Data
    function getAge() public view returns (uint64) {
        return Age.unwrap(age); // Convert Age back to uint64
    }

    function getWeight() public view returns (uint64) {
        return Weight.unwrap(weight); // Convert Weight back to uint64
    }

}
