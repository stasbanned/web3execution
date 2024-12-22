// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Superhash

contract Tree {
    bytes32[] public hashes;
    string[4] transactions = [
        "TX1: Denys -> Velera",
        "TX2: Velera -> Denys",
        "TX3: Velera -> Ann",
        "TX3: Ann -> Denys"
    ];

    constructor() {
        for(uint i = 0; i < transactions.length; i++) {
            hashes.push(hashing(transactions[i]));
        }

        uint count = transactions.length;
        uint offset = 0;

        while(count > 0) {
            for(uint i = 0; i < count - 1; i += 2) {
                hashes.push(keccak256(
                    abi.encodePacked(
                        hashes[offset + i], hashes[offset + i + 1]
                    )
                ));
            }
            offset += count;
            count = count / 2;
        }
    }

    function decode(string memory in1) public pure returns(bytes memory) {
        return abi.encodePacked(in1);
    }

    function hashing(string memory in1) public pure returns(bytes32) {
        return keccak256(
            decode(in1)
        );
    }
}