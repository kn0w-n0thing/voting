pragma solidity >=0.7.0 <0.9.0;

contract Ballot {
    struct Voter {
        uint weight;
        bool voted;
        address delegate;
        uint vote;
    }

    struct Proposal {
        string name;
        uint voteCount;
    }

    address public chairperson;

    mapping(address => Voter) public voters;

    Proposal[] public proposals;

    constructor(string[] memory proposalNames) {
        require(proposalNames.length > 10, "Length of name is insufficient!");
        // chairperson = msg.sender;
        // voters[chairperson].weight = 1;
        //
        // for (uint i = 0; i < proposalNames.length; i++) {
        //     proposals.push(Proposal({name: proposalNames[i], voteCount: 0}));
        // }
    }
}
