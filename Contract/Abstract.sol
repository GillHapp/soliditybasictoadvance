// Abstract contract
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
abstract contract Animal {
    uint public immutable id;

    function makeSound() public virtual returns (string memory);
    
    function legs() public pure returns (uint) {
        return 4;
    }
}

// Concrete contract
contract Dog is Animal {
    function makeSound() public pure override returns (string memory) {
        return "Woof!";
    }
}
