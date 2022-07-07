//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) usersTotalWaves;

    constructor() {
        console.log("Buildspace Web3 Learning Smart Contract");
    }

    function wave() public {
        totalWaves += 1;
        usersTotalWaves[msg.sender] += 1;
        console.log("%s has waved!", msg.sender);
        console.log("%s has a total of %s waves", msg.sender, usersTotalWaves[msg.sender]);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}