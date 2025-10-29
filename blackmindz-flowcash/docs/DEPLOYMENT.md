# Flow Ca$h — Guia de Deploy

## Pré-requisitos
- Node.js 16+, Rust 1.70+, Anchor CLI 0.29+, Solana CLI 1.18+

## Frontend
```bash
npm install
npm run dev
```

## Programas (Anchor)
```bash
anchor build
anchor test
anchor deploy --provider.cluster devnet
```

## Configuração
- `.env`: chaves, RPC, parâmetros do Kamino
- Atualizar IDs dos programas e endereços de cofre no frontend