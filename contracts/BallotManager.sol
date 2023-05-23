// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BallotManager {
    struct BallotInfo {
	string name;
	uint endTime;
        string sismoGroupId;
	string storageLocation;
        string[] candidates;
	uint8 protocolVersion;
    }
    mapping(string => string[]) public votes;
    mapping(string => BallotInfo) public ballots;

    constructor() {
    }

    function createBallot(string memory _ballotId, string memory _name, unint memory _endTime, string memory _sismoGroupId, string memory _storageLocation, string[] memory _candidates, uint8 memory _protocolVersion) public {
        ballots[_ballotId] = BallotInfo(_name, _endTime, _sismoId, _dkgRitualId, _storageLocation, _candidates, _protocolVersion);
    }

    function getName(string memory _ballotId) external view returns(string memory) {
	return ballots[_ballotId].name;
    }

    function getEndTime(string memory _ballotId) external view returns(uint memory) {
	return ballots[_ballotId].endTime;
    }

    function getSismoGroupID(string memory _ballotId) external view returns(string memory) {
        return ballots[_ballotId].sismoGroupId;
    }

    function getStorageLocation(string memory _ballotId) external view returns(string memory) {
        return ballots[_ballotId].storageLocation;
    }

    function getCandidates(string memory _ballotId) external view returns(string[] memory) {
        return ballots[_ballotId].candidates;
    }

    function getProtocolVersion(string memory _ballotId) external view returns(uint8 memory) {
	return ballots[_ballotId].protocolVersion;
    }

    function vote(string memory _ballotId, string memory _encryptedProofAndVote) public {
        votes[_ballotId].push(_encryptedProofAndVote);
    }
}
