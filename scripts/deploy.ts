// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
// When running the script with `hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
import { ethers } from 'hardhat';
import { Contract, ContractFactory } from 'ethers';

async function main(): Promise<void> {
  // Hardhat always runs the compile task when running scripts through it.
  // If this runs in a standalone fashion you may want to call compile manually
  // to make sure everything is compiled
  // await run("compile");
  // We get the contract to deploy
  const MarinasFirstNFTFactory: ContractFactory = await ethers.getContractFactory(
    'MarinasFirstNFT',
  );
  const myNFT: Contract = await MarinasFirstNFTFactory.deploy();
  await myNFT.deployed();
  console.log("Marina's NFT deployed to: ", myNFT.address);

  // get the max supply and mint all
  const count = await myNFT.maxTotalSupply();

  for (let i=0; i<count; i++) {
    console.log("About to mint NFT #" + i.toString());
    //create the NFT
    let txn = await myNFT.makeCodeArtNFT();
    //wait for it to be minted
    await txn.wait();  
    console.log("Minted complete of NFT #" + i.toString() );
  }
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error: Error) => {
    console.error(error);
    process.exit(1);
  });
