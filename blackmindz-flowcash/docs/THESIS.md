# Tese do Projeto — Correntes DApp

## Visão Geral para Jurados (iniciante)
- Problema: artistas recebem pouco, com atrasos e pouca transparência nos repasses de royalties. Fãs não participam do upside.
- Solução: transformar direitos de músicas em ativos digitais (NFTs na Solana), vendendo frações e automatizando royalties via smart contracts. Fãs investem e recebem parte dos ganhos da obra.
- Diferencial “rendimento duplo”: além dos royalties, o protocolo aloca reservas em DeFi com baixo risco para gerar rendimento adicional, somando dois fluxos de receita.
- Interoperabilidade: usando Wormhole Bridge, a liquidez e os ativos podem circular em outras redes, atraindo mais usuários sem sair da base Solana.
- Transparência: um dashboard mostra entradas, saídas, repasses, detentores e métricas de performance para avaliação objetiva.

## Como Funciona (passo-a-passo simples)
- 1. Tokenização: cada música vira um NFT com metadados (obra, ISRC/ISWC, participantes, splits).
- 2. Frações e oferta: frações do direito econômico são ofertadas aos fãs/investidores conforme regras definidas.
- 3. Receita: quando a música gera receita (streaming, licença, sync), o valor é depositado e validado.
- 4. Distribuição: o contrato divide automaticamente entre artista, participantes e detentores de frações, sem intermediários.
- 5. Rendimento duplo: parte das reservas é usada em estratégias DeFi conservadoras para gerar rendimento extra.
- 6. Cross-chain: via Wormhole, ativos podem atravessar para redes com liquidez específica e voltar, mantendo a contabilidade e a prova de solvência.
- 7. Transparência: tudo é visível no dashboard (status do NFT, repasses, métricas, auditoria).

## Por que Solana
- Taxas muito baixas e alta performance (finalidade rápida).
- Ecossistema DeFi e tooling maduro (Anchor, SPL, Metaplex).
- Boa integração com pontes (Wormhole) para expandir alcance sem perder a base.

## O que Avaliar (checklist rápido)
- Clareza do ativo: NFT documenta obra e participantes com splits.
- Automação: distribuição on-chain sem etapas manuais.
- Fontes de receita: royalties + rendimento DeFi (parâmetros conservadores).
- Transparência: dashboard e logs auditáveis.
- Interoperabilidade: fluxo via Wormhole e garantias de integridade.
- Conformidade: limites de oferta e regras claras, sem promessa de retornos garantidos.