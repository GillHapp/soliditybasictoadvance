// bitwise => perform opration on binary 
// logical => AND , OR , NOT 
// athmetic => +, -, /, *,%
// conditional => (CONDITION ? true : false);

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract OperatorExamples {

    // 1️⃣ Logical Operators
    function logicalOps(bool a, bool b) external pure returns (bool andRes, bool orRes, bool notA) {
        andRes = a && b;  // true if both are true
        orRes = a || b;   // true if either is true
        notA = !a;        // true if a is false
    }




// 3 => 00000011
//not=> 11111100
// 5 => 00000101

//xor =>00000110
//and=> 00000001
//or => 00000111

    // 2️⃣ Bitwise Operators
    function bitwiseOps(uint8 x, uint8 y) external pure returns (uint8 and, uint8 or, uint8 xor, uint8 notX) {
        and = x & y;      // AND operation
        or = x | y;       // OR operation
        xor = x ^ y;      // XOR operation
        notX = ~x;        // NOT operation
    }



 // 1️⃣ Left Shift: x << n shifts x to the left by n bits (x * 2ⁿ)
    function leftShift(uint256 x, uint8 n) external pure returns (uint256) {
        return x << n; // 00001100
        // 00011000 
    }

    // 2️⃣ Right Shift: x >> n shifts x to the right by n bits (x / 2ⁿ)
    function rightShift(uint256 x, uint8 n) external pure returns (uint256) {
        return x >> n; // 00000011 , n=1, => 00000001
        // 00000011 , n=2, => 00000000
    }










    // 3️⃣ Arithmetic Operators
    function arithmeticOps(uint256 a, uint256 b) external pure returns (uint256 sum, uint256 diff, uint256 product, uint256 quotient, uint256 modRemainder) {
        sum = a + b;
        diff = a - b;
        product = a * b;
        quotient = a / b;
        modRemainder = a % b;
    }










    // 4️⃣ Conditional (Ternary) Operator
    function conditionalOp(uint256 a, uint256 b) external pure returns (string memory result) {
        result = a > b ? "A is greater" : "B is greater or equal";
    }
}
