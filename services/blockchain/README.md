# Correntes DApp — Flow Ca$h Records

![Build CI](https://github.com/DGuedz/flowcashrecords/actions/workflows/ci.yml/badge.svg) ![Rust CI](https://github.com/DGuedz/flowcashrecords/actions/workflows/rust.yml/badge.svg) ![License](https://img.shields.io/badge/license-MIT-green.svg) [![codecov](https://codecov.io/gh/DGuedz/flowcashrecords/branch/main/graph/badge.svg)](https://codecov.io/gh/DGuedz/flowcashrecords)

Flow Ca$h Records is a Web3 project that connects fans, artists, and decentralized finance on Solana through ISRC-native royalty tokenization. The MVP delivers a Dual-Yield vault that combines streaming royalties with DeFi returns, creating unprecedented asymmetric gains in the musical RWA market.

**One-liner**: First ISRC-integrated Musical RWA Launchpad on Solana with Dual-Yield optimization (100% Streaming Royalties + DeFi Interest).

## Overview
- Dual‑Yield vault to combine returns (e.g., DeFi + streaming)
- Utility NFTs (access, voting, rewards)
- Social token and Wormhole integration when applicable
- Dashboard with combined APY metrics and royalty flow

## Architecture
- Application (dApp) in `src/` with frontend and Solana integrations
- Contracts (as applicable) in `programs/` (Rust) or `src/contracts`
- Documentation in `docs/`
- Automated tests in `tests/`
Three‑phase funnel: Phase 1 (Token), Phase 2 (NFT), Phase 3 (Dashboard).
More details in `ARCHITECTURE.md`.

## Installation Requirements
- Node.js >= 18 (LTS)
- npm or pnpm
- Rust toolchain (if there are Rust components)
- Solana CLI and `@solana/web3.js` for integrations
- **GitKraken MCP** for enhanced development experience

## Installation
```bash
git clone https://github.com/DGuedz/flowcashrecords.git
cd flowcashrecords
npm install

# Environment variables are pre-configured for devnet
# No need to copy .env.example - .env is ready to use

# Complete setup and deploy (recommended)
npm run setup
```

## 🔧 Solana Devnet Configuration

The project is pre-configured for **Solana devnet** to facilitate testing:

```env
NEXT_PUBLIC_SOLANA_RPC_URL=https://api.devnet.solana.com
NEXT_PUBLIC_SOLANA_NETWORK=devnet
```

### GitKraken MCP Integration

Enhanced development experience with custom scripts:

```bash
# Complete setup and deploy
npm run setup

# Deploy to devnet (alternative)
npm run deploy:devnet

# Test ISRC integration
npm run demo

# Check Solana balance
npm run solana:balance

# Request SOL airdrop
npm run solana:airdrop
```

**Setup Features**:
- ✅ Solana account configuration with fallback RPCs
- ✅ Automatic airdrop request for devnet
- ✅ Vault initialization for "Correntes" track
- ✅ ISRC integration testing (BR-BMZ-25-00001)
- ✅ Deployment status monitoring in `deployment-info.json`

## Usage
```bash
# Development (if frontend/webapp)
npm run dev

# Build
npm run build

# Tests
npm test
```

### Solana Connection Example
```ts
import { Connection, clusterApiUrl, Keypair } from '@solana/web3.js'
const connection = new Connection(clusterApiUrl('devnet'), 'confirmed')
const wallet = Keypair.generate()
console.log('Wallet public key:', wallet.publicKey.toBase58())
```

## Tests
- Put unit tests in `tests/`
- Run `npm test` or `cargo test` depending on module

## CI/CD
- Workflows in `.github/workflows/`
- `ci.yml`: Node.js build/test (auto‑detects `package.json`)
- `rust.yml`: Rust build/test (auto‑detects `Cargo.toml`)
- `release.yml`: creates Release when publishing `v*` tags
- `codecov.yml`: sends coverage to Codecov (requires `CODECOV_TOKEN` in Settings → Secrets → Actions)

## Endpoints
- Solana RPC: `SOLANA_RPC_URL` (see `.env.example`)
- Devbase API: `DEVBASE_API_URL`
- App ID: `APP_ID`

## 🎵 ISRC Innovation

Flow Ca$h Records introduces the **first native ISRC integration on Solana**, creating a verifiable bridge between real-world music streaming royalties and DeFi optimization.

### **How It Works**
1. **ISRC Tracking**: Each stream on Spotify/Apple Music is tracked by unique ISRC code (`BR-XXX-25-00001`)
2. **Royalty Collection**: 100% of neighboring rights (33.3% of total royalties) flow to the vault
3. **DeFi Optimization**: USDC deposits automatically earn yield via Kamino Lend
4. **Dual-Yield Distribution**: NFT holders receive streaming royalties + DeFi interest

### **Example: "Correntes" Track**
```
ISRC: BR-XXX-25-00001
Monthly Streams: 1,250,000
Neighboring Rights: $416.67 USDC
DeFi Yield (8% APY): $333.33 USDC
Combined Monthly Yield: $750.00 USDC
Projected APY: ~18% (in stable scenarios, up to 125% in viral cases)
```

### **Technical Innovation**
- **Real-time Verification**: Cross-reference streaming platform APIs with royalty collection agencies
- **Transparent Distribution**: Smart contract automatically distributes rewards proportionally to NFT holders
- **Compound Optimization**: Idle USDC generates additional yield while maintaining liquidity for claims
- `ARCHITECTURE.md`: tech stack (React/Next.js, TypeScript, @solana/web3.js, Wallet Adapter; Rust programs; Metaplex, Wormhole, Kamino Lend)
- `TOKENOMICS.md`: business model, royalty distribution, Dual‑Yield
- `docs/strategy/LEAN_CANVAS.md`: Lean Canvas
- `docs/strategy/PLAN_LITE.md`: Prototype, MVP, GTM
- `docs/strategy/ROADMAP.md`: Phases and milestones

## Contribution
See `CONTRIBUTING.md` for PR flow, conventional commits, and review rules.

## Versioning
- SemVer for release tags: `vMAJOR.MINOR.PATCH`
- Maintain records in `CHANGELOG.md`

## License
MIT — see `LICENSE`. RoyaltyDistributor is open‑source and benefits the Solana ecosystem.

## Judge's Guide
- Read our thesis in `docs/THESIS.md` to understand the core strategy, how it works, why Solana, and the evaluation checklist.

## Hackathon Submission
- Event: Solana Cypherpunk Hackathon 2025
- Track: RWA & DeFi
- Repository: `DGuedz/flowcashrecords`
- Pitch Deck: `docs/pitch/pitch-deck.pdf`
- Demo: `docs/demo` (videos and captures)
- Contact: see `CONTRIBUTING.md` (support/communication)

## Dados e Validação
- Removemos métricas e percentuais não verificados (TPS, APY, custos, taxas).
- Publique números reais apenas com evidências em exploradores (Solscan/Explorer) e relatórios de CI.
- Referências:
  - `RELATORIO_DEPLOYS_CONTRATOS.md` (evidências públicas)
  - `docs/DEPLOYMENT.md` (como medir e onde registrar)
  - `docs/TESTING.md` (escopo e dados de teste; não representam produção)

## Endereços e Evidências

- Endereços, PDAs, mints e contas devem ser publicados no documento central `docs/DEPLOYMENT.md` ou `SOLANA_DEPLOY_ADDRESSES.md` (se existir), com links de verificação nos exploradores.
- Evite replicar endereços aqui para reduzir riscos de divergência. Use os explorers oficiais para verificação:
  - Solana Explorer devnet: https://explorer.solana.com/?cluster=devnet
  - Solscan devnet: https://solscan.io/?cluster=devnet

### RPC Endpoints
- **Devnet**: `https://api.devnet.solana.com`
- **Custom RPC**: `https://rpc.dev.fun` (DevBase integration)
- **Backup RPC**: `https://devnet.helius.xyz`
