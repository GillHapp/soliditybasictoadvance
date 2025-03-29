// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample {
    // Declare a dynamic array of unsigned integers
    uint[] public arr;

    // Function to remove an element from the array at a given index
    function remove(uint index) public {
        // Ensure the index is within bounds (to prevent accessing an invalid index)
        require(index < arr.length, "Index out of bounds");

        // Shift elements to the left starting from the specified index
        // Example: If arr = [1, 2, 3, 4, 5] and we want to remove the element at index 2
        // We shift elements like this: arr[2] = arr[3], arr[3] = arr[4], and so on.
        for (uint i = index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];  // Move the next element into the current position
        }

        // Remove the last element (which is now a duplicate after shifting)
        arr.pop();  // This decreases the array length by 1
    }


}







// [1,2,3,4,5] = arr
// i want to remove index 2nd value from an array 
// [1,2,4,5,5] => arr.length - 1
// [1,2,4,5] => arr.pop();




// for (uint i = index; i < arr.length - 1; i++) {
//             arr[i] = arr[i + 1];  // Move the next element into the current position
//         }