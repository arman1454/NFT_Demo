require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config()
require("@nomicfoundation/hardhat-ethers");

const {API_URL,PRIVATE_KEY} = process.env;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.20",
  defaultNetwork: "sepolia",
  networks:{
    hardhat:{},
    sepolia:{
      url:API_URL,
      accounts: [`0x${PRIVATE_KEY}`]
    }
  }
};
