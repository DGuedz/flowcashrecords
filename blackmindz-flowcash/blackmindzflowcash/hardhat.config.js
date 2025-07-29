```javascript
require("@nomicfoundation/hardhat-toolbox");
require("@openzeppelin/hardhat-upgrades");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.19",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  
  networks: {
    // Scroll Mainnet
    scroll: {
      url: "https://rpc.scroll.io/",
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : [],
      chainId: 534352,
      gasPrice: 1000000000, // 1 gwei
      gas: 5000000,
    },
    
    // Scroll Sepolia Testnet
    scrollSepolia: {
      url: "https://sepolia-rpc.scroll.io/",
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : [],
      chainId: 534351,
      gasPrice: 1000000000, // 1 gwei  
      gas: 5000000,
    },
    
    // Local development
    localhost: {
      url: "http://127.0.0.1:8545",
      chainId: 31337,
    },
  },
  
  etherscan: {
    apiKey: {
      scroll: process.env.SCROLLSCAN_API_KEY || "dummy",
      scrollSepolia: process.env.SCROLLSCAN_API_KEY || "dummy"
    },
    customChains: [
      {
        network: "scroll",
        chainId: 534352,
        urls: {
          apiURL: "https://api.scrollscan.com/api",
          browserURL: "https://scrollscan.com/"
        }
      },
      {
        network: "scrollSepolia", 
        chainId: 534351,
        urls: {
          apiURL: "https://api-sepolia.scrollscan.com/api",
          browserURL: "https://sepolia.scrollscan.com/"
        }
      }
    ]
  },

  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts"
  },

  mocha: {
    timeout: 40000
  }
};
```
