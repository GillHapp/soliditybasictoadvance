// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract DataLocations {
    // 🔹 State variables stored in storage (on blockchain)
    uint256[] public arr; // Dynamic array stored permanently
    mapping(uint256 => address) public map; // Mapping of numbers to addresses

    struct MyStruct {
        uint256 foo;
    }

    mapping(uint256 => MyStruct) public myStructs; // Mapping of numbers to struct


    // 🔹 Function that demonstrates storage and memory usage
    function f() public {
        // Call _f with state variables (storage)
        _f(arr, map, myStructs[1]);
  // 23
        // Get a struct from a mapping (storage reference)
        MyStruct storage myStruct = myStructs[1];
        myStruct.foo = 42; // ✅ This modifies blockchain data

        // Create a struct in memory (temporary variable)
        // MyStruct memory myMemStruct = MyStruct(100);
        // myMemStruct.foo = 200; // ✅ This change is NOT stored permanently
    }




    // 🔹 Internal function working with storage variables
    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // Modify the storage array
        _arr.push(10); // ✅ Modifies blockchain data

        // Update mapping
        _map[1] = msg.sender; // ✅ Stores sender’s address in mapping

        // Modify struct in storage
        _myStruct.foo = 23; // ✅ Modifies blockchain data
    }











    // 🔹 Function that accepts and returns memory array
    function g(uint256[] memory _arr) public pure returns (uint256[] memory) {
        // ✅ Modifies memory array but does NOT change blockchain data
        if (_arr.length > 0) {
            _arr[0] = 999; // Change first element (temporary)
        }
        return _arr; // ✅ Returns modified temporary array
    }

    // 🔹 Function that accepts calldata array (read-only, saves gas)
    function h(uint256[] calldata _arr) external pure returns (uint256) {
        // ❌ Cannot modify _arr because calldata is read-only
        return _arr.length; // ✅ Returns length of input array
    }


}