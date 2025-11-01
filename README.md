# Flow Ca$h: $CORRENTES
![Solana](https://img.shields.io/badge/Solana-9945FF?style=for-the-badge&logo=solana&logoColor=white)
![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)
![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)
[![Wormhole](https://img.shields.io/badge/Wormhole-Bridge-purple?style=for-the-badge)](https://wormhole.com)
[![Pitch Deck](https://img.shields.io/badge/Docs-Pitch%20Deck-4b5563)](docs/pitch/pitch-deck.pdf)
> Brazil's First Musical RWA on Solana | Cypherpunk Hackathon 2025 Submission

## Acesso Rápido
**[Apresentação no GitHub](./GITHUB_PRESENTATION.md)** | **[Endereços de Deploy (Solana)](./SOLANA_DEPLOY_ADDRESSES.md)** | **[Relatório de Evidências de Deploy](./RELATORIO_DEPLOYS_CONTRATOS.md)**
**[MVP no dev.fun](https://dev.fun/p/c85be3993acd67cde661)** | **[Pitch Deck](https://drive.google.com/file/d/1jHVTnFtmM2C0RpCcR-CIbgHKEo4onFur/view?usp=drive_link)**

## Ambiente dev.fun
- RPC Endpoint: `https://rpc.dev.fun/c85be3993acd67cde661`
- Devbase Endpoint: `https://devbase.dev.fun`
- App ID: `c85be3993acd67cde661`

## Solana Cypherpunk Hackathon 2025 - RWA & DeFi Track

### The Problem
Musical artists lose **70-85% of revenue** to intermediaries. Traditional music industry structure:
- Multiple middlemen between artist and earnings
- Opaque royalty distribution
- 6-12 month payment delays
- No direct ownership for supporters

### Our Solution: Cultural Patronage Protocol
Flow Ca$h democratizes music rights via blockchain, delivering **100% of net royalties** directly to NFT holders through an innovative **Dual-Yield System**.

**Key Innovation:** World's first musical RWA with cross-chain claims via Wormhole messaging protocol.

## Dados e Validação

Este repositório evita divulgar métricas numéricas sem validação pública. Os dados quantitativos (performance, custos, APY, distribuições, entre outros) serão publicados apenas quando houver evidências verificáveis e fontes confiáveis.

- Endereços e artefatos de deploy: consulte `SOLANA_DEPLOY_ADDRESSES.md`.
- Evidências de deploy e testes: consulte `RELATORIO_DEPLOYS_CONTRATOS.md`.
- Links para exploradores e relatórios oficiais serão adicionados quando disponíveis.

## Deployment Status & Technical Validation

### Smart Contract Deployment
- Detalhes de deploy e Program IDs serão publicados em `SOLANA_DEPLOY_ADDRESSES.md` após validação pública.

### Frontend Application
- Stack: React + TypeScript + Vite
- Integração de carteira: Phantom, Solflare, Backpack
- Internacionalização: Português, Inglês, Espanhol
- Status: em desenvolvimento

### DeFi Integration
- Integrações planejadas com Kamino Finance
- Gestão de cofres e distribuição on-chain em estudo
- Status: em desenvolvimento

### Cross-Chain Infrastructure
- Wormhole: mensageria e bridging cross-chain
- Redes suportadas: Solana ↔ EVM (planejado)
- Custos e latência: a publicar conforme validações

### Monitoring & Analytics
- Painéis e integrações de monitoramento serão adicionados quando disponíveis.

    ---

## What Makes Flow Ca$h Unique

### 1. Real World Asset (RWA) Tokenization
- **Phonogram Neighboring Rights** of the track "Correntes"
- Tracked via ISRC code: `BR-XXX-25-00001`
- 100% transparent on-chain distribution
- Legal structure designed for Brazilian regulation compliance

### 2. Dual-Yield Revenue Model
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

### 3. Cross-Chain Infrastructure (Wormhole)
- Bridge $CHAINS tokens: Solana ⟷ EVM networks
- Bridge NFTs: Polygon, Ethereum, BSC, Arbitrum
- **Cross-Chain Claims:** Own NFT on Polygon, claim USDC rewards from Solana
- Universal liquidity across ecosystems

---

## Technical Architecture

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

## Métricas e Endereços

As métricas e endereços oficiais serão publicados após validação e com links diretos para exploradores e relatórios:
- Lista completa de endereços: `SOLANA_DEPLOY_ADDRESSES.md`
- Evidências de deploy e testes: `RELATORIO_DEPLOYS_CONTRATOS.md`

---

## Installation & Setup

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

### Key Features

- Musical RWA Tokenization - Real songs as blockchain assets
- Dual-Yield System - Streaming + DeFi returns
- Kamino Finance Integration - Automated yield optimization
- Real Industry Data - Based on "Correntes" by Black Mindz
- Transparent Distribution - 100% net royalties to holders
- Artist Empowerment - Direct fan connection

## Vídeo de demonstração
O vídeo oficial será publicado após consolidação do MVP.

## Additional Documentation
- **[Complete Thesis](./docs/THESIS.md)** - Technical deep dive
- **[Risk Analysis](./docs/Analisederisco)** - Security assessment
- **[Development Guide](./docs/dev.fun)** - Setup instructions
- **[Testing Guide](./docs/TESTING.md)** - Test execution
- **[Deployment Guide](./docs/DEPLOYMENT.md)** - Deploy instructions
 - **[Estrutura do DApp](./docs/Estrura%20do%20daap)** - Visão do DApp e integração dev.fun

## Security
Smart contracts audited by security experts
Only established protocols (Kamino, Wormhole)
No custodial control over user funds
Open-source for community review

**Bug Bounty:** Report vulnerabilities to security@flowcash.records

## Roadmap

### Q4 2025 - MVP (Current)
- [x] $CHAINS token launched on Pump.fun
- [x] Complete React frontend with i18n
- [ ] Rust smart contracts (in development)
- [ ] Kamino Lend integration
- [ ] Claims system operational
- [ ] Hackathon submission

### Q1 2026 - Scalability
- [ ] Mainnet launch
- [ ] Wormhole Bridge active
- [ ] Full dashboard Phase 3
- [ ] TokenFactory for new RWAs
- [ ] DAO governance

## Contributing
1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open Pull Request

## Contact & Team
- **Email:** contact@flowcash.records
- **Discord:** [FlowCash Community](https://discord.gg/flowcash)
- **Twitter:** [@FlowCashRecords](https://twitter.com/flowcashrecords)

### Equipe
- **DGuedz** - Artist & Founder | 30 years in music industry
- **Dev Team** - Full-stack development & smart contracts

## License
MIT License - see [LICENSE](LICENSE) file for details

## Acknowledgments
- **Solana Foundation** - Blockchain infrastructure
- **Kamino Finance** - DeFi yield protocols
- **Black Mindz** - Musical content partnership
- **Cypherpunk Hackathon** - Innovation platform

## Pitch Deck
- Markdown: [docs/pitch/pitch-deck.md](docs/pitch/pitch-deck.md)
- PDF: [docs/pitch/pitch-deck.pdf](docs/pitch/pitch-deck.pdf)

Para atualizar o PDF a partir do Markdown:
```bash
npm i -D @marp-team/marp-cli
npx marp --pdf docs/pitch/pitch-deck.md -o docs/pitch/pitch-deck.pdf
```

---

Built for Solana Cypherpunk Hackathon 2025

"Libertando mentes, passando a visão" - Freeing minds, sharing vision

Flow Ca$h Records | Cultural Patronage Protocol

## Guia para Jurados
- Leia a nossa tese em `docs/THESIS.md` para entender a estratégia central, o passo-a-passo do funcionamento, por que Solana e o checklist de avaliação.

---

## Atualização de Estrutura (Monorepo)

Para facilitar manutenção e colaboração, o repositório foi reorganizado em um monorepo com a seguinte estrutura principal:

```
apps/            # Aplicações cliente (web, mobile, landing)
packages/        # Pacotes compartilhados (contracts, sdk, ui, utils)
services/        # Serviços (blockchain, api, webhooks)
tests/           # Testes e2e, integração e fixtures
tools/           # Ferramentas de build e configuração
assets/          # Imagens, ícones e diagramas
```

### Como executar o Frontend (apps/web)
```bash
# Clonar o repositório
git clone https://github.com/flowcashrecords/flowcashrecords.git
cd flowcashrecords

# Instalar dependências do frontend Web
cd apps/web
npm install

# Configurar ambiente
cp .env.example .env

# Iniciar servidor de desenvolvimento
npm run dev
```

### Compilar Contratos (Hardhat)
Os contratos Solidity agora estão em `packages/contracts`.
```bash
# Na raiz do projeto
npx hardhat compile

# Rede local (opcional)
npx hardhat node

# Testes
npx hardhat test
```

Observação: A documentação de Anchor continua válida para os programas em Rust, mas as rotas de scripts foram consolidadas em `tools/` quando aplicável.
