// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


contract GasOptimization {
    // uint16 public x = 1;

    // function value() public pure {
    //     uint8 a = 7;
    // }

    // compare bytes[] and bytesx , bytes16
    // bytes[] public values;

    // function addValue(bytes memory _val) external {
    //     values.push(_val);
    // }

    // function getValue(uint256 index) external view returns (bytes memory) {
    //     return values[index];
    // }
   
//    bytes32[3] public values; //[1,22,3] => "Array is full"
//     uint8 public index;

//     function addValue(bytes32 _val) external {
//         require(index < 3, "Array is full");
//         values[index] = _val;
//         index++;
//     }

//     function getValue(uint256 _index) external view returns (bytes32) {
//         return values[_index];
//     }

 // event in solidity 

 // 	239122 , 28047
 //     193567 , 25810


//  event Log(string);

//  function func(string memory _str) public {
    // emit Log(_str);
//  }

// calldata and memory 

// Uses calldata - cheaper, read-only
    // function readCalldata(string calldata _input) external pure returns (string memory) {
    //     return _input;  // just return, cannot modify _input
    // }

    // Uses memory - can be modified, gas costly 
    // function modifyMemory(string memory _input) external pure returns (string memory) {
        // bytes memory temp = bytes(_input);
        // temp[0] = "X"; // ✅ we can modify memory
        // return string(_input);
    // }
    // 	1371 => memory 
    // 1073 => calldata


    // uint256 public value;
    // error ValueTooLarge(uint256 sent);

    // 1️⃣ Using require => 50303, 27468,  27459
    // function setWithRequire(uint256 _val) external {
    //     require(_val < 1000, "Too !");
    //     value = _val;
    // }

    // 2️⃣ Using assert (only use if you're 100% sure no bug) => 27468
    // function setWithAssert(uint256 _val) external {
    //     assert(_val < 1000); // If fails, reverts and consumes ALL gas
    //     value = _val;
    // }

    // 3️⃣ Using if-else => 27459
    // function setWithIfElse(uint256 _val) external {
    //     if (_val < 1000) {
    //         value = _val;
    //     } else {
    //         revert("Too big!");
    //     }
    // }

    // struct student{
    //     uint8 id;
    //     address add;
    //     string name;
    //     uint8 age;
    // }
    // => 4

    //   struct student{
    //     uint8 id;
    //     uint8 age;
    //     address add;
    //     string name;
    //   }
        // => 3


    // slot => 1 ,2,3 


   function notOptimized(uint256[] calldata nums) external pure returns (uint256 sum) {
    for (uint256 i = 0; i < nums.length; ++i) { // evert time read 
        sum += nums[i];
    }
}

function optimized(uint256[] calldata nums) external pure returns (uint256 sum) {
    uint256 len = nums.length; // one time read 
    for (uint256 i = 0; i < len; ++i) {
        sum += nums[i];
    }
}


}