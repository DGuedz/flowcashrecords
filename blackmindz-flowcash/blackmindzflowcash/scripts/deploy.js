// scripts/deploy.js
const { ethers, upgrades } = require("hardhat");

async function main() {
  const MusicNFT = await ethers.getContractFactory("MusicNFT");
  const musicNFT = await upgrades.deployProxy(MusicNFT, [], {
    initializer: "initialize"
  });

  await musicNFT.deployed();
  console.log("✅ MusicNFT deployed at:", musicNFT.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
