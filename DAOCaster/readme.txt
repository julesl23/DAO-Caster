DAO Caster
==========
By Jules Lai and thanks to thelastjosh and Asgeir from the Ethereum Magicians forum

DAO Caster is a multi-chain smart contract that relays DAO updates securely for discovery and services. Based off of EIP-3722 Poster and ERC-4824. Uses a singleton factory pattern so that the same smart contract address is used to retrieve emitted events across different Ethereum compatible blockchains.

Two other projects in GitHub that can be used to test and interact with this smart contract:

An example DAO used to send updates to DAO Caster
https://github.com/julesl23/DAO-Charity

An example DAO discovery service to listen to DAO updates emitted by DAO Caster
https://github.com/julesl23/DAO-Discover