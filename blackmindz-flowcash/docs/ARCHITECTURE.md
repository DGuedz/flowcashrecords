# Flow Ca$h — Arquitetura Técnica

## Stack
- Frontend: React 18 + Tailwind, @solana/wallet-adapter, React Router
- Infra: DevBase (API/SDK), RPC `rpc.dev.fun`
- Programas (Rust/Anchor): RoyaltyDistributor, TokenFactory, VaultManager
- Integrações: Kamino (DeFi), Metaplex (NFT), Wormhole (Cross-chain)

## Programas
- royalty-distributor/
  - deposit_royalties()
  - claim_rewards()
  - invest_in_defi()
- token-factory/
  - create_music_asset()
  - configure_pricing()
- vault-manager/
  - deposit_usdc()
  - harvest_yield()
  - distribute()

## Fluxo de Dados
- Streams → Royalties → USDC → RoyaltyDistributor → Kamino (yield) → Claims em USDC

## Observabilidade
- Métricas: TVL, APY combinado, retenção, claims
- Auditoria: logs on-chain e relatórios de distribuição