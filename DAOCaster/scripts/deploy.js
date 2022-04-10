const hre = require('hardhat');
//const { singletons } = require('@openzeppelin/test-helpers');
const { env } = hre;

async function main() {
  const ERC4824 = await hre.ethers.getContractFactory('ERC4824');
  const erc4824 = await ERC4824.deploy();
  await erc4824.deployed();

  console.log(`deploy: ERC4824_ADDRESS=${erc4824.address}`);

  const SimpleToken = await hre.ethers.getContractFactory('SimpleToken');
  const usdcToken = await SimpleToken.deploy('USD Coin', 'USDC', 6, '1000000000000000');
  await usdcToken.deployed();

  console.log(`USDC: USDC_ADDRESS=${usdcToken.address}`);

  const GovernanceToken = await hre.ethers.getContractFactory('GovernanceToken');
  const governanceToken = await GovernanceToken.deploy(hre.ethers.utils.parseEther('50000'));
  await governanceToken.deployed();

  console.log(`USDC: GOVERNANCE_ADDRESS=${governanceToken.address}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
