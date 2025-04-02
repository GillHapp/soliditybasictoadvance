// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ErrorHandlingExample {
    address public owner;
    uint256 public balance;

    // Define a custom error for better gas efficiency
    error InsufficientBalance(uint256 available, uint256 required);

    error NotOwner(address caller);


    error DepositAmountMustBeGraterThenZero(string message);

    constructor() {
        owner = msg.sender;
    }

    // 🔹 Function using `require`
function deposit(uint256 _amount) public {
    if (_amount <= 0) {
        revert DepositAmountMustBeGraterThenZero("Deposit amount must be greater than zero");
    }
    balance += _amount;
}

    // 21981
    // 22003
    // 21736 
    // 22003

    // 🔹 Function using `revert`
    // function withdraw(uint256 _amount) public {


    //     if (_amount > balance) {
    //         revert("Not enough balance to withdraw");
    //     }
    //     balance -= _amount;
    // }












    // 🔹 Function using `custom error`
    function withdrawWithCustomError(uint256 _amount) public {
        if (_amount > balance) {
            revert InsufficientBalance(balance, _amount);
        }
        balance -= _amount;
    }









    // 🔹 Function using `assert`
    function emergencyReset() public {
        assert(balance >= 0); // Balance should never be negative
        balance = 0;
    }












    // 🔹 Function to restrict access using `custom error`
    function onlyOwnerFunction() public view {
        if (msg.sender != owner) {
            revert NotOwner(msg.sender);
        }
    }
}
