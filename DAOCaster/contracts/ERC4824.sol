// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ERC4824 {
    event DAOUpdate(
        address indexed sender,
        address indexed dao,
        string name,
        string description,
        string governanceURI
    );

    event MemberUpdate(
        address indexed sender,
        address indexed dao,
        address indexed member,
        string memberURI
    );

    event ProposalUpdate(
        address indexed sender,
        address indexed dao,
        string indexed proposalId,
        string proposalURI
    );

    event ActivityLogUpdate(
        address indexed sender,
        address indexed dao,
        string indexed activityId,
        string activityLogURI
    );

    function daoUpdate(
        address dao,
        string calldata name,
        string calldata description,
        string calldata governanceURI
    ) public {
        emit DAOUpdate(msg.sender, dao, name, description, governanceURI);
    }

    function memberUpdate(
        address dao,
        address member,
        string calldata memberURI
    ) public {
        emit MemberUpdate(msg.sender, dao, member, memberURI);
    }

    function proposalUpdate(
        address dao,
        string calldata proposalId,
        string calldata proposalURI
    ) public {
        emit ProposalUpdate(msg.sender, dao, proposalId, proposalURI);
    }

    function activityLogUpdate(
        address dao,
        string calldata activityId,
        string calldata activityLogURI
    ) public {
        emit ActivityLogUpdate(msg.sender, dao, activityId, activityLogURI);
    }
}
