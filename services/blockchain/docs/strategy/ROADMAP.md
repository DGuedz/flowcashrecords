# Roadmap — Flow Ca$h em Solana

## Diretrizes de Versionamento
- `main`: estável, apenas código auditado e pronto para demonstração.
- `feature/*`: novas funcionalidades isoladas (ex.: `feature/nft-correntes`, `feature/royalty-claims`).
- Commits descritivos e PRs com checklist de evidências (links de Explorer, logs de CI).

## Fase 1 — MVP $CHAINS (dev.fun + pump.fun)
- Token inicial e utilidades básicas.
- Infra RPC, conexão wallets, primeiros claims simulados.
- Entregáveis: README atualizado, script de setup, validações mínimas em CI.

## Fase 2 — NFTs “Correntes”
- Mint Metaplex, marketplace, distribuição de royalties de streams.
- Integração do cofre Dual‑Yield (Kamino) com regras e limites.
- Entregáveis: Program IDs e transações com links, documentação de fluxo de royalties.

## Fase 3 — Dashboard e Governança
- Métricas, relatórios, governança (SPL Governance ou programa próprio).
- Integrações cross‑chain (Wormhole) conforme viabilidade.
- Entregáveis: Painel de métricas, scripts de exportação e documentação de governança.
