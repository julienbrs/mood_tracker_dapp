// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MoodDiary {
    struct Mood {
        uint256 timestamp;
        string mood;
    }

    mapping(address => Mood) public addressToMood;

    function setMood(string memory _mood) public {
        addressToMood[msg.sender] = Mood(block.timestamp, _mood);
    }

    function getMood() public view returns (Mood memory) {
        return addressToMood[msg.sender];
    }
}
