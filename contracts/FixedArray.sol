// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30;

contract FixedArray {
    uint[3] public favoriteNumbers;

    function setNumber(uint index, uint value) public {
        favoriteNumbers[index] = value;
    }

    function getNumber(uint index) public view returns (uint) {
        return favoriteNumbers[index];
    }
}