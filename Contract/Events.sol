// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract IndexedEventExample {
    event Transfer(address indexed from, address indexed to, uint256 indexed  value);

    function transfer(address _to, uint256 _amount) public {
        emit Transfer(msg.sender, _to, _amount);
    }
}

// Button==address => to , value

contractInstance.getPastEvents("Transfer", {
    filter: { from: "0x123..." }, 
    fromBlock: 0,
    toBlock: "latest"
}).then(console.log);
