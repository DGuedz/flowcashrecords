const { ethers } = require("hardhat");

async function main() {
  // Deploy padrão do contrato Lock (Hardhat sample)
  const currentTimestampInSeconds = Math.round(Date.now() / 1000);
  const unlockTime = currentTimestampInSeconds + 60; // 1 minuto
  const lockedAmount = ethers.parseEther("0.01");

  const Lock = await ethers.getContractFactory("Lock");
  const lock = await Lock.deploy(unlockTime, { value: lockedAmount });
  await lock.waitForDeployment();

  console.log(
    `Lock com ${ethers.formatEther(lockedAmount)} ETH e unlockTime ${unlockTime} em ${lock.target}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
