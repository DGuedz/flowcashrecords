# Flow Ca$h: Correntes

Submissão para Solana Colosseum Hackathon 2025 | Superteam Brasil

[![Solana](https://img.shields.io/badge/Solana-9945FF?style=for-the-badge&logo=solana&logoColor=white)](https://solana.com)
[![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](https://react.dev)
[![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)](https://www.rust-lang.org)
[![Wormhole](https://img.shields.io/badge/Wormhole-Bridge-purple?style=for-the-badge)](https://wormhole.com)

Projeto de RWA musical na Solana: tokenização de direitos do fonograma “Correntes”, com distribuição de receitas direta e transparente aos detentores de NFTs e integração DeFi para rendimento adicional.

## Sumário
- [Visão Geral](#visão-geral)
- [Acesso Rápido para Jurados](#acesso-rápido-para-jurados)
- [Ambiente dev.fun](#ambiente-devfun)
- [Problema e Solução](#problema-e-solução)
- [Diferenciais](#diferenciais)
- [Arquitetura Técnica](#arquitetura-técnica)
- [Deployment e Validação](#deployment-e-validação)
- [Métricas e Endereços](#métricas-e-endereços)
- [Instalação e Setup](#instalação-e-setup)
- [Segurança](#segurança)
- [Roadmap](#roadmap)
- [Contribuição](#contribuição)
- [Contato e Equipe](#contato-e-equipe)
- [Licença](#licença)
- [Pitch Deck](#pitch-deck)

## Visão Geral
Flow Ca$h é um protocolo de patronagem cultural que tokeniza direitos musicais e distribui 100% das receitas líquidas diretamente aos detentores, combinando royalties de streaming com rendimento proveniente de integrações DeFi.

## Acesso Rápido para Jurados
- Apresentação no GitHub: `./GITHUB_PRESENTATION.md`
- Endereços de Deploy (Solana): `./SOLANA_DEPLOY_ADDRESSES.md`
- Relatório de Evidências de Deploy: `./RELATORIO_DEPLOYS_CONTRATOS.md`
- MVP no dev.fun: `https://dev.fun/p/c85be3993acd67cde661`
- Pitch Deck (PDF): `https://drive.google.com/file/d/1jHVTnFtmM2C0RpCcR-CIbgHKEo4onFur/view?usp=drive_link`

## Ambiente dev.fun
- RPC Endpoint: `https://rpc.dev.fun/c85be3993acd67cde661`
- Devbase Endpoint: `https://devbase.dev.fun`
- App ID: `c85be3993acd67cde661`

## Problema e Solução
- Problema: artistas perdem grande parte da receita para intermediários; distribuição opaca e demorada; pouca participação de apoiadores na propriedade e nos resultados.
- Solução: tokenização on-chain dos direitos do fonograma “Correntes”, distribuição direta de receitas aos detentores de NFTs e uso de cofres DeFi para rendimento adicional (dual-yield).

Exemplo ilustrativo (não vinculante):
- Receitas mensais de streaming entram no contrato `royalty-distributor`.
- Parte das reservas é alocada em protocolo DeFi (Kamino), gerando juros.
- Detentores podem fazer claim dos royalties + juros acumulados de forma transparente, on-chain.

## Diferenciais
- RWA musical: direitos conexos do fonograma “Correntes” tokenizados.
- Dual-yield: royalties + rendimento DeFi, com lógica de distribuição clara.
- Interoperabilidade: mensageria e ponte cross-chain (Wormhole) para ampliar liquidez e acessos.

## Arquitetura Técnica

### Frontend
- React + TypeScript + Vite e Tailwind CSS.
- Integração de carteira: Phantom, Solflare, Backpack via `@solana/wallet-adapter`.
- Hook de dados: métricas do token e progresso da curva de bonding (dev.fun / pump.fun).

### Contratos (Rust/Anchor)
- `royalty-distributor`: recebe royalties e processa claims dos usuários.
- `token-factory`: criação de ativos musicais (NFTs/RWAs) e parâmetros.
- `vault-manager`: integração com protocolo DeFi para rendimento adicional.

### Integrações
- Kamino Finance: rendimento DeFi.
- Wormhole: mensageria/bridging cross-chain.
- Metaplex: padrão NFT.

Documentação complementar:
- `./docs/ARCHITECTURE.md`
- `./docs/TOKENOMICS.md`
- `./docs/CONTRACTS.md`
- `./docs/DEPLOYMENT.md`
- `./docs/dev.fun`

## Deployment e Validação
- Endereços e artefatos de deploy: `./SOLANA_DEPLOY_ADDRESSES.md`.
- Evidências de deploy e testes: `./RELATORIO_DEPLOYS_CONTRATOS.md`.
- Links para exploradores e relatórios oficiais serão adicionados conforme validações públicas.

## Métricas e Endereços
Este repositório evita divulgar métricas numéricas sem validação pública. Os dados quantitativos (performance, custos, APY, distribuições) serão publicados somente com evidências verificáveis.

Referências:
- Endereços: `./SOLANA_DEPLOY_ADDRESSES.md`.
- Evidências: `./RELATORIO_DEPLOYS_CONTRATOS.md`.

## Instalação e Setup

### Pré-requisitos
```
Node.js 16+
Rust 1.70+ e Anchor CLI 0.29+
Solana CLI 1.18+
```

### Frontend (apps/web ou correntes-launchpad)
```
# Instalar dependências
npm install

# Ambiente
cp .env.example .env

# Desenvolvimento
npm run dev
```

### Contratos (Anchor)
```
cd backend/solana
anchor build
anchor test
anchor deploy --provider.cluster devnet
```

### Contratos (Solidity / Hardhat)
```
# Na raiz do projeto
npx hardhat compile
npx hardhat test
```

## Segurança
- Uso de padrões estabelecidos e auditoria externa planejada.
- Sem custódia de fundos dos usuários.
- Código aberto para revisão comunitária.

## Roadmap
- MVP: lançamento do token, frontend funcional, contratos em desenvolvimento, integração inicial DeFi, claims em ambiente de teste, submissão a hackathons (Colosseum/Superteam Brasil).
- Próximas fases: mainnet, ponte cross-chain, dashboard avançado, expansão para novos RWAs, governança.

## Contribuição
1. Fork e criação de branch de feature.
2. Commits objetivos e descritivos.
3. Pull Request com contexto, testes e impacto.
4. Seguir `CONTRIBUTING.md`.

## Contato e Equipe
- Email de contato: `contact@flowcash.records`
- Comunidade (Discord/Twitter): divulgados após avaliação pública.

Equipe:
- DGuedz — artista e fundador.
- Dev Team — full-stack e contratos inteligentes.

## Licença
MIT License (ver `./LICENSE`).

## Pitch Deck
- Markdown: `./docs/pitch/pitch-deck.md`
- PDF: `./docs/pitch/pitch-deck.pdf`

Gerar PDF a partir do Markdown:
```
npm i -D @marp-team/marp-cli
npx marp --pdf docs/pitch/pitch-deck.md -o docs/pitch/pitch-deck.pdf
```
