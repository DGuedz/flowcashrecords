# Flow Ca$h: Correntes

Submissão para Solana Colosseum Hackathon 2025 e iniciativa Superteam Brasil.

Este documento apresenta a visão, arquitetura e instruções de execução do projeto Flow Ca$h, com foco em tokenização de direitos musicais (RWA) e distribuição de receitas de forma transparente e on-chain.

Observação: informações sensíveis e canais privados foram removidos. Canais oficiais serão divulgados publicamente após a fase de avaliação dos hackathons.

## Contexto de Hackathons

- Solana Colosseum Hackathon 2025: projeto candidato na trilha RWA/DeFi, com ênfase em arquitetura escalável na Solana e integrações cross-chain.
- Superteam Brasil: apoio comunitário e validação de produto, com foco em documentação clara, segurança e execução prática.

## Problema

Artistas perdem grande parte da receita para intermediários. A distribuição é opaca, demorada e com pouca participação de apoiadores na propriedade e nos resultados.

## Solução

Protocolos on-chain para tokenizar ativos musicais e distribuir 100% das receitas líquidas aos detentores de NFTs, combinando royalties com rendimento DeFi de forma transparente e auditável.

## Diferenciais

- RWA musical: tokenização de direitos conexos do fonograma “Correntes”.
- Dual-yield: royalties + juros provenientes de alocação em protocolos DeFi.
- Cross-chain: uso de mensageria e ponte para interoperabilidade entre Solana e EVM.

## Arquitetura Técnica

### Frontend
- React + Tailwind, foco em UX simples e responsivo.
- Integração com carteiras via `@solana/wallet-adapter`.
- Hook de dados para métricas do token e progresso em curva de bonding.

### Contratos (Rust/Anchor)
- `royalty-distributor`: recebe royalties e processa claims dos usuários.
- `token-factory`: criação e parametrização de ativos musicais (NFTs/RWAs).
- `vault-manager`: integração com protocolo DeFi para rendimento adicional.

### Integrações
- Kamino Finance (rendimento).
- Wormhole (mensageria/ponte).
- Metaplex (padrão NFT).

## Instalação e Setup

### Pré-requisitos

```
Node.js 16+
Rust 1.70+ e Anchor CLI 0.29+
Solana CLI 1.18+
```

### Frontend

```
npm install
npm run dev
```

### Contratos (Anchor)

```
cd programs
anchor build
anchor test
anchor deploy --provider.cluster devnet
```

## Documentação Complementar

- `ARCHITECTURE.md`: visão técnica detalhada.
- `TOKENOMICS.md`: modelo econômico.
- `CONTRACTS.md`: especificação de contratos.
- `DEPLOYMENT.md`: guia de deploy.

## Segurança

- Uso de padrões estabelecidos e auditoria externa planejada.
- Sem custódia de fundos dos usuários.
- Código aberto para revisão comunitária.

## Roadmap

- MVP: lançamento do token, frontend funcional, contratos em desenvolvimento, integração inicial DeFi, claims em ambiente de teste, submissão aos hackathons (Colosseum/Superteam Brasil).
- Próximas fases: mainnet, ponte cross-chain, dashboard avançado, expansão para novos RWAs, governança.

## Contribuição

1. Fork e branch de feature.
2. Commits objetivos.
3. Pull Request com descrição clara.
4. Seguir `CONTRIBUTING.md`.

## Licença

MIT License (ver arquivo `LICENSE`).

---

## dev.fun — Prompt para MVP do Launchpad

Objetivo: construir uma landing única para o token `$CORRENTES`, com compra simplificada e verificação de desconto para carteiras que já possuem o token.

### Stack e Setup
- React (Vite, TypeScript) e Tailwind.
- `@solana/wallet-adapter-react` para Phantom e Solflare.
- `@solana/web3.js` para interações básicas.
- SDK do `pump.fun` para compras.

### Layout
- Coluna centralizada e responsiva.
- Header com título “Flow Ca$h — Correntes” e botão de conectar carteira.
- `TokenStats`: market cap, ouvintes (simulado), replies.
- `BondingCurveProgress`: barra de progresso até a meta de listagem.
- `PriceChart`: placeholder inicial.
- `BuyForm`: campo para SOL e botão “Comprar $CORRENTES”.

### Lógica do `BuyForm`
1. Verificar conexão de carteira.
2. Ler o valor em SOL.
3. Executar `buy` via SDK do `pump.fun`.
4. Exibir estados de “processando”, “sucesso” ou “erro”.

### Hook de Dados
- `usePumpFunData(mint)`: consulta periódica à API HTTP `/coins/{mint}` a cada 10s.
- Retorna dados para `TokenStats` e `BondingCurveProgress`.

### Verificação de Desconto
- Regra: se a carteira tiver saldo do token `$CORRENTES`, aplicar desconto de preço nos NFTs.
- Implementar estado visual claro para “desconto disponível” e “sem desconto”.

Notas finais: evitar exposição de dados sensíveis; publicar somente endpoints públicos e documentação necessária para avaliação.
