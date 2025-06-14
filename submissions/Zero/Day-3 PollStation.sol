// SPDX-License-Identifier:MIT

pragma solidity ^0.8.4;

contract PollStation{

    string[] public candidateNames;
    mapping (string => uint256) public voteCount;

    function addCandidates(string memory _candidateNames) public {
        candidateNames.push(_candidateNames);
        voteCount[_candidateNames] = 0;
    }

    function vote(string memory _candidatenNames) public {
        voteCount[_candidatenNames]++;
    }

    function getCandidateNames() public view returns (string[] memory) {
        return candidateNames;
    }

    function getVote(string memory _candidateNames) public view returns(uint256) {
        return voteCount[_candidateNames];
    }
}
