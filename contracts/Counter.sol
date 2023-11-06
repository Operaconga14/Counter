// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

contract CounterContract {

    struct Counter {
        uint number;
        string description;
    }

    Counter counter;

    constructor(uint initial_number, string memory initial_description) {
        counter = Counter(initial_number, initial_description);
    }

    function increment() public {
        counter.number += 1;
    }

    function decrement() public {
        counter.number -=1;
    }

    function current() public view returns (uint) {
        return counter.number;
    }
}