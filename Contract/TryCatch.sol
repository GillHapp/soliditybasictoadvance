// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// External contract
contract Calculator {
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Division by zero not allowed");
        return a / b;
    }

    constructor(address _owner) {
        require(_owner != address(0), "Invalid address");
        assert(_owner != 0x0000000000000000000000000000000000000001);
    }
}










contract TryCatchExample {
    event Success(string message, uint256 result);
    event Fail(string reason);
    event FailBytes(bytes data);

    Calculator public calc;

    constructor() {
        // Deploying external contract in constructor
        calc = new Calculator(msg.sender);
    }

    // 1️⃣ Try/Catch - External call
    function testDivide(uint256 a, uint256 b) public {
        try calc.divide(a, b) returns (uint256 result) {
            emit Success("Division successful", result);
        } catch Error(string memory reason) {
            emit Fail(reason);
        } catch {
            emit Fail("Unexpected error");
        }

    }

}
