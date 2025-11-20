// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30;

contract DynamicArray {
    uint[] public scores;

    function addScore(uint value) public {
        scores.push(value);
    }

    function removeLast() public {
        scores.pop();
    }

    function getScore(uint index) public view returns (uint) {
        return scores[index];
    }

    function getTotalScores() public view returns (uint) {
        return scores.length;
    }
}