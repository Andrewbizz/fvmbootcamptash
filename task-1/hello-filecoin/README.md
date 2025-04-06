# FEVM Starter Kit

A minimal Hardhat project to deploy Solidity smart contracts to the Filecoin Virtual Machine (FEVM).

## Setup

```bash
git clone https://github.com/temi0x/fevm-bootcamp
cd fevm-bootcamp
cp .env.example .env
# Add your PRIVATE_KEY to .env
npm install
```

## Deploying to Calibration Testnet

```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network calibration
```

## Links
- [Calibration Faucet](https://faucet.calibnet.chainsafe-fil.io//)
- [FEVM Docs](https://docs.filecoin.io/smart-contracts/fundamentals/the-fvm/)
- [Filfox Explorer](https://calibration.filfox.info/en)
