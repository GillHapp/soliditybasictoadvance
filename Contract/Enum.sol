// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending, // 0
        Shipped,  // 1
        Accepted, //..
        Rejected, //..
        Canceled // 4
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;


    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    function Shipp() public {
        status = Status.Shipped;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}
