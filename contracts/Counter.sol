// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

contract CounterContract {

    address owner;

    struct Counter {
        uint number;
        string description;
    }

    Counter counter;

    modifier onlyOwner {
        require(msg.sender == owner, "Only Owner can increase or decrease");
        _;
    }

    constructor(uint initial_number, string memory initial_description) {
        owner = msg.sender;
        counter = Counter(initial_number, initial_description);
    }

    function increment() external onlyOwner {
        counter.number += 1;
    }

    function decrement() external onlyOwner{
        counter.number -=1;
    }

    function current() external view returns (uint) {
        return counter.number;
    }
}