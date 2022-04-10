/**
 * @type import('hardhat/config').HardhatUserConfig
 */

//require('@nomiclabs/hardhat-truffle5');
require('@nomiclabs/hardhat-waffle');
require('hardhat-abi-exporter');
require('@nomiclabs/hardhat-ethers');
//require('dotenv').config();

module.exports = {
  networks: {
    hardhat: {
      gas: 12000000,
      blockGasLimit: 0x1fffffffffffff,
      allowUnlimitedContractSize: true,
      timeout: 1800000,
      chainId: 1337,
    },
  },

  solidity: {
    version: '0.8.4', // Note that this only has the version number
    settings: {
      evmVersion: 'berlin',
      optimizer: {
        enabled: true,
        runs: 300,
      },
    },
  },
  abiExporter: {
    path: './build/contracts',
    clear: true,
    flat: true,
    spacing: 2,
    pretty: true,
  },
};
