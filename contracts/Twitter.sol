// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

contract Twitter {

    mapping(address => string) public tweets;

    function createTweet(string memory _tweet) public {
        tweets[msg.sender] = _tweet;
    }

    function getTweet(address _owner) public view returns (string memory) {
        return tweets[_owner];
    }
}