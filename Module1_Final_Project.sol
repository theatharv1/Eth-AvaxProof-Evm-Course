/*
Writing a smart contract code that implements the require(), assert() and revert() statements.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorHandling {
    uint public balance = 0;

    // Function to withdraw funds; checking if there's enough balance.
    function withdraw(uint amount) public {
        require(balance >= amount, "Insufficient balance for withdrawal");
        balance -= amount;
    }

    // Function to deposit funds, ensuring the balance doesn't exceed 500.
    function deposit(uint amount) public {
        require(balance + amount <= 500, "Balance limit exceeded");
        balance += amount;
    }

    // Function to check if the balance is zero.
    function isBalanceZero() public view returns (string memory) {
        assert(balance == 0);
        return "Your balance is zero, no funds available for the transaction.";
    }
}
