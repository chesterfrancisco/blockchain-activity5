// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30;

contract WalletBalance {
    mapping(address => uint) public balances;
    
    function deposit(uint amount) public {
        balances[msg.sender] += amount;
    }

    function getBalance(address user) public view returns (uint) {
        return balances[user];
    }

    function resetMyBalance() public {
        balances[msg.sender] = 0;
    }

}