async function main() {
    const MyNFT = await ethers.getContractFactory("MyNFT");
    const myERC1155 = await MyNFT.deploy();
    await myERC1155.deployed();
    console.log("Contract deployed to address:", myERC1155.address);
}

main()
   .then(() => process.exit(0))
   .catch((error) => {
        console.error(error);
        process.exit(1);
    });
    