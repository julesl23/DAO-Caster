// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";

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
        console.log("ERC4824: before emit DAOUpdate");

        emit DAOUpdate(msg.sender, dao, name, description, governanceURI);

        console.log("ERC4824 daoUpdate: msg.sender = ", msg.sender);
        console.log("ERC4824 daoUpdate: dao = ", dao);
        console.log("ERC4824 daoUpdate: name = ", name);
        console.log("ERC4824 daoUpdate: description = ", description);
        console.log("ERC4824 daoUpdate: governanceURI = ", governanceURI);
    }

    function memberUpdate(
        address dao,
        address member,
        string calldata memberURI
    ) public {
        console.log("ERC4824 before emit memberUpdate");

        emit MemberUpdate(msg.sender, dao, member, memberURI);

        console.log("ERC4824 memberUpdate: msg.sender = ", msg.sender);
        console.log("ERC4824 memberUpdate: dao = ", dao);
        console.log("ERC4824 memberUpdate: member = ", member);
        console.log("ERC4824 memberUpdate: governanceURI = ", memberURI);
    }

    function proposalUpdate(
        address dao,
        string calldata proposalId,
        string calldata proposalURI
    ) public {
        console.log("ERC4824 before emit proposalUpdate");

        emit ProposalUpdate(msg.sender, dao, proposalId, proposalURI);

        console.log("ERC4824 proposalUpdate: msg.sender = ", msg.sender);
        console.log("ERC4824 proposalUpdate: dao = ", dao);
        console.log("ERC4824 proposalUpdate: proposalId = ", proposalId);
        console.log("ERC4824 proposalUpdate: proposalURI = ", proposalURI);
    }

    function activityLogUpdate(
        address dao,
        string calldata activityId,
        string calldata activityLogURI
    ) public {
        console.log("ERC4824 before emit activityLogUpdate");

        emit ActivityLogUpdate(msg.sender, dao, activityId, activityLogURI);

        console.log("ERC4824 activityLogUpdate: msg.sender = ", msg.sender);
        console.log("ERC4824 activityLogUpdate: dao = ", dao);
        console.log("ERC4824 activityLogUpdate: activityId = ", activityId);
        console.log(
            "ERC4824 activityLogUpdate: activityLogURI = ",
            activityLogURI
        );
    }
}
