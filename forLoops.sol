// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract loops {
    // Dynamic array to store numbers
    uint256[] public values;

    // -------------------------------------------------------
    // Function: add
    // Adds a new number to the 'values' array
    // Input: x  (the number to add)
    // -------------------------------------------------------
    function add(uint256 x) public {
        values.push(x);
    }

    // -------------------------------------------------------
    // Function: calcTotal
    // Calculates and returns the sum of all numbers in 'values'
    // Uses a loop to iterate through the array
    // -------------------------------------------------------
    function calcTotal() public view returns (uint256) {
        uint256 total; // accumulator for sum

        for (uint256 i = 0; i < values.length; i++) {
            total += values[i]; // add each element to total
        }

        return total; // return the final sum
    }

    // -------------------------------------------------------
    // Function: retrieve
    // Returns all numbers stored in 'values' as a memory array
    // -------------------------------------------------------
    function retrieve() public view returns (uint256[] memory) {
        return values;
    }

    // -------------------------------------------------------
    // Function: retrieveCount
    // Returns the number of elements currently in 'values'
    // -------------------------------------------------------
    function retrieveCount() public view returns (uint256) {
        return values.length;
    }

    // -------------------------------------------------------
    // Function: getMax
    // Returns the largest number in the 'values' array
    // Steps:
    // 1. Start with the first element as the maximum
    // 2. Loop through the rest of the array
    // 3. Update maxValue if a bigger number is found
    // -------------------------------------------------------
    function getMax() public view returns (uint256) {
        uint256 maxValue = values[0]; // start with first element as max

        for (uint256 i = 1; i < values.length; i++) {
            if (values[i] > maxValue) {
                maxValue = values[i]; // update max if current number is bigger
            }
        }

        return maxValue;
    }

    // -------------------------------------------------------
    // Function: countGreaterthan
    // Counts how many numbers in 'values' are greater than a given number 'x'
    // Steps:
    // 1. Initialize a counter to 0
    // 2. Loop through the array and check each number
    // 3. Increment counter if number > x
    // -------------------------------------------------------
    function countGreaterthan(uint256 x) public view returns (uint256) {
        uint256 _totalCount; // counter

        for (uint256 i = 0; i < values.length; i++) {
            if (values[i] > x) {
                _totalCount++;
            }
        }

        return _totalCount;
    }

    // -------------------------------------------------------
    // Function: multiplyAll
    // Multiplies all numbers in 'values' and returns the product
    // Steps:
    // 1. Initialize product to 1 (multiplication identity)
    // 2. Loop through the array, multiply each element
    // 3. Return final product
    // -------------------------------------------------------
    function multiplyAll() public view returns (uint256) {
        uint256 _totalProduct = 1; // accumulator for product

        for (uint256 i = 0; i < values.length; i++) {
            _totalProduct *= values[i];
        }

        return _totalProduct;
    }
}
