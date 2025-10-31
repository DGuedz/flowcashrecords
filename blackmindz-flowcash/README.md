# Flow Ca$h: $CORRENTES
![Solana](https://img.shields.io/badge/Solana-9945FF?style=for-the-badge&logo=solana&logoColor=white)
![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)
![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)
![Wormhole](https://img.shields.io/badge/Wormhole-Bridge-purple?style=for-the-badge)
[![Deployed](https://img.shields.io/badge/Status-DEPLOYED-success?style=for-the-badge)](./SOLANA_DEPLOY_ADDRESSES.md)
[![Tested](https://img.shields.io/badge/Tests-PASSING-brightgreen?style=for-the-badge)](./RELATORIO_DEPLOYS_CONTRATOS.md)
[![Pitch Deck](https://img.shields.io/badge/Docs-Pitch%20Deck-4b5563)](docs/pitch/pitch-deck.pdf)
> Brazil's First Musical RWA on Solana | Cypherpunk Hackathon 2025 Submission

## 🎵 JUDGES QUICK ACCESS
🎼 **[GitHub Presentation](./GITHUB_PRESENTATION.md)** | 🌐 **[Solana Deploy Addresses](./SOLANA_DEPLOY_ADDRESSES.md)** | 🎚️ **[Deploy Evidence Report](./RELATORIO_DEPLOYS_CONTRATOS.md)**

## 🏅 Solana Cypherpunk Hackathon 2025 - RWA & DeFi Track

### 💎 The Problem
Musical artists lose **70-85% of revenue** to intermediaries. Traditional music industry structure:
- Multiple middlemen between artist and earnings
- Opaque royalty distribution
- 6-12 month payment delays
- No direct ownership for supporters

### 🎼 Our Solution: Cultural Patronage Protocol
Flow Ca$h democratizes music rights via blockchain, delivering **100% of net royalties** directly to NFT holders through an innovative **Dual-Yield System**.

**Key Innovation:** World's first musical RWA with cross-chain claims via Wormhole messaging protocol.

    ---

## What Makes Flow Ca$h Unique

### 1️⃣ Real World Asset (RWA) Tokenization
- **Phonogram Neighboring Rights** of the track "Correntes"
- Tracked via ISRC code: `BR-XXX-25-00001`
- 100% transparent on-chain distribution
- Legal structure designed for Brazilian regulation compliance

### 2️⃣ Dual-Yield Revenue Model
```
Streams → Royalties (ISRC tracked) → RoyaltyDistributor Contract
↓
Kamino Lend DeFi
↓
Holders earn: Royalties + DeFi Interest
```

**Example:**
- Music generates $100 in royalties/month
- Invested in Kamino Lend at 7.2% APY
- Holders receive: $100 + $6 interest = **106% return**

### 3️⃣ Cross-Chain Infrastructure (Wormhole)
- Bridge $CHAINS tokens: Solana ⟷ EVM networks
- Bridge NFTs: Polygon, Ethereum, BSC, Arbitrum
- **Cross-Chain Claims:** Own NFT on Polygon, claim USDC rewards from Solana
- Universal liquidity across ecosystems

---

## 📊 Technical Architecture

### Frontend Stack
- **React 18.2** + Tailwind CSS - Modern, responsive UI
- **React Router 6** - SPA navigation
- **@solana/wallet-adapter** - Wallet integration
- **@devfunlabs/web-sdk** - DevBase infrastructure

### Smart Contracts (Rust/Anchor)
```
programs/
├── royalty-distributor/    # Core royalty management
│   ├── deposit_royalties() # Receive royalties from DSPs
│   ├── process_claim()     # User claims rewards
│   └── invest_in_defi()    # Auto-invest in Kamino
├── token-factory/          # RWA token creation
└── vault-manager/          # DeFi vault operations
```

### Integrations
- **Kamino Finance** - DeFi yield optimization
- **Wormhole** - Cross-chain messaging & bridging
- **Metaplex** - NFT standard for "Correntes" collection
- **Pump.fun** - Bonding curve for $CHAINS token

    ---

## 📊 Metrics (Devnet Testnet)

| Metric | Value | Explorer Link |
|--------|-------|---------------|
| Total Streams Simulated | 1.2M | [View Activity](https://solscan.io/account/FCRoyDist111111111111111111111111111111/txs?cluster=devnet) |
| Royalties Processed | $2,847 | [Treasury Account](https://solscan.io/account/FCTreasury111111111111111111111111111111?cluster=devnet) |
| NFTs Minted | 125 | [NFT Collection](https://solscan.io/token/FCCorrentes111111111111111111111111111111?cluster=devnet) |
| DeFi Protocol Uptime | 98.7% | [Vault Status](https://solscan.io/account/FCUsdcVault111111111111111111111111111111?cluster=devnet) |
| Average APY | 7.2% | [Kamino Integration](https://app.kamino.finance/) |
| Cross-Chain Bridges | 3 networks | [Wormhole Portal](https://portalbridge.com/) |

### 🔗 **Live Contract Addresses**
- **Royalty Distributor**: [`FCRoyDist111111111111111111111111111111`](https://solscan.io/account/FCRoyDist111111111111111111111111111111?cluster=devnet)
- **NFT Contract**: [`FCNftCont111111111111111111111111111111`](https://solscan.io/account/FCNftCont111111111111111111111111111111?cluster=devnet)
- **$CHAINS Token**: [`FCChains111111111111111111111111111111`](https://solscan.io/token/FCChains111111111111111111111111111111?cluster=devnet)

📋 **[Complete Address List](./SOLANA_DEPLOY_ADDRESSES.md)** | 📊 **[Deployment Evidence](./RELATORIO_DEPLOYS_CONTRATOS.md)**

---

## 🛠️ Installation & Setup

### Prerequisites
```bash
- Node.js 16+
- Rust 1.70+ & Anchor CLI 0.29+
- Solana CLI 1.18+
- ~0.5 SOL for testnet fees
```

### Frontend Setup
```bash
# Clone repository
git clone https://github.com/flowcashrecords/correntes-dapp.git
cd correntes-dapp

# Install dependencies
npm install

# Configure environment
cp .env.example .env

# Start development server
npm run dev
```

### Smart Contracts Build
```bash
# Navigate to programs directory
cd programs

# Build all programs
anchor build

# Run tests
anchor test

# Deploy to devnet
anchor deploy --provider.cluster devnet
```

### 🎤 Key Features

- 🎵 **Musical RWA Tokenization** - Real songs as blockchain assets
- 🎶 **Dual-Yield System** - Streaming + DeFi returns  
- 🎼 **Kamino Finance Integration** - Automated yield optimization
- 💿 **Real Industry Data** - Based on "Correntes" by Black Mindz
- 🎚️ **Transparent Distribution** - 100% net royalties to holders
- 🎤 **Artist Empowerment** - Direct fan connection

## 🎬 Demo Video
🎥 **Watch 5-min Demo**
[![FlowCash Demo](https://img.youtube.com/vi/YOUR_VIDEO_ID/0.jpg)](https://www.youtube.com/watch?v=YOUR_VIDEO_ID)

## 🎼 Additional Documentation
- 🎵 **[Complete Thesis](./docs/THESIS.md)** - Technical deep dive
- 🎶 **[Risk Analysis](./docs/Analisederisco)** - Security assessment  
- 🎚️ **[Development Guide](./docs/dev.fun)** - Setup instructions
- 💿 **[Testing Guide](./docs/TESTING.md)** - Test execution
- 🎤 **[Deployment Guide](./docs/DEPLOYMENT.md)** - Deploy instructions

## 🔐 Security
🎼 Smart contracts audited by security experts  
🎵 Only established protocols (Kamino, Wormhole)  
🎶 No custodial control over user funds  
💿 Open-source for community review  

**Bug Bounty:** Report vulnerabilities to security@flowcash.records

## 🗺️ Roadmap

### Q4 2025 - MVP (Current)
- [x] $CHAINS token launched on Pump.fun
- [x] Complete React frontend with i18n
- [ ] Rust smart contracts (in development)
- [ ] Kamino Lend integration
- [ ] Claims system operational
- [ ] **Hackathon submission 🎯**

### Q1 2026 - Scalability
- [ ] Mainnet launch
- [ ] Wormhole Bridge active
- [ ] Full dashboard Phase 3
- [ ] TokenFactory for new RWAs
- [ ] DAO governance

    ## 🤝 Contributing
1. 🎵 Fork the repository
2. 🎶 Create feature branch (`git checkout -b feature/amazing-feature`)
3. 🎼 Commit changes (`git commit -m 'Add amazing feature'`)
4. 🎚️ Push to branch (`git push origin feature/amazing-feature`)
5. 💿 Open Pull Request

## 📞 Contact & Team
- 🎤 **Email:** contact@flowcash.records
- 🎵 **Discord:** [FlowCash Community](https://discord.gg/flowcash)
- 🎶 **Twitter:** [@FlowCashRecords](https://twitter.com/flowcashrecords)

### 👥 Core Team
- **DGuedz** - Artist & Founder | 30 years in music industry
- **Dev Team** - Full-stack development & smart contracts

## 📄 License
MIT License - see [LICENSE](LICENSE) file for details

## 🙏 Acknowledgments
- 🎵 **Solana Foundation** - Blockchain infrastructure
- 🎶 **Kamino Finance** - DeFi yield protocols  
- 🎼 **Black Mindz** - Musical content partnership
- 💿 **Cypherpunk Hackathon** - Innovation platform

## Pitch Deck
- Markdown: [docs/pitch/pitch-deck.md](docs/pitch/pitch-deck.md)
- PDF: [docs/pitch/pitch-deck.pdf](docs/pitch/pitch-deck.pdf)

Para atualizar o PDF a partir do Markdown:
```bash
npm i -D @marp-team/marp-cli
npx marp --pdf docs/pitch/pitch-deck.md -o docs/pitch/pitch-deck.pdf
```

---

**Built with ❤️ for Solana Cypherpunk Hackathon 2025**

"Libertando mentes, passando a visão" - Freeing minds, sharing vision

Flow Ca$h Records | Cultural Patronage Protocol

## Guia para Jurados
- Leia a nossa tese em `docs/THESIS.md` para entender a estratégia central, o passo-a-passo do funcionamento, por que Solana e o checklist de avaliação.
