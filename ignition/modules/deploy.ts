import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";
import { DummyData } from "../../typechain-types";
import { ethers } from "hardhat";

async function main() {
  let factory = await ethers.getContractFactory("DummyData");
  const DummyData = await factory.deploy("1","2","2","Jhon Doe", "1723449222","1000") as DummyData;
};

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});