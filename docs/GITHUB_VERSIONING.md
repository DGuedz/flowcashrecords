# Estrutura Completa do GitHub — Flow Ca$h

## 1) Propósito: Versionamento e Imutabilidade
- O Git/GitHub é a prova programática da evolução do protocolo.
- Cada commit registra um estado auditável do código do DApp em Solana.
- Regras: somente publicar métricas com evidências (explorer, CI/logs).

## 2) Componentes Estruturais do Repositório

### A) Branches (Ramificações)
- `main`: versão estável e demonstrável do código.
- `feature/nova-logica`: desenvolvimento isolado de novas funcionalidades.
  - Exemplos: `feature/royalty-claims`, `feature/nft-correntes`, `feature/wormhole-integration`.
- Política: abrir PRs com checklist de evidências e revisão.

### B) Commits (Pontos de Salvamento)
- Commits descritivos explicando o que mudou e por quê.
- Exemplo: `feat(royalties): implementa deposit_royalties e claim no programa Rust`.
- Mantém histórico rastreável e facilita auditoria do hackathon.

## 3) Fluxo de Sincronização (Comandos Essenciais)
```bash
git add .          # Prepara os arquivos modificados
git commit -m "Mensagem descritiva"  # Cria o ponto de salvamento local
git push           # Sincroniza com o repositório remoto no GitHub
```
- Recomendações: usar branches de `feature/*` e abrir PRs com descrição.

## 4) Arquivos/Componentes Chave do Flow Ca$h
- `backend/solana/` — Programas/serviços do backend Solana (Rust/Anchor quando aplicável).
- `services/blockchain/` — Integrações (Kamino Lend, Wormhole, métricas, scripts).
- `apps/web/` — Frontend (Next.js/React), funil em três fases.
- `docs/` — Documentação (arquitetura, deploy, estratégia, apresentação).
- `SOLANA_DEPLOY_ADDRESSES.md` — Program IDs e links para Explorer.
- `RELATORIO_DEPLOYS_CONTRATOS.md` — Evidências de deploy e validação com fontes públicas.
- `services/blockchain/docs/strategy/ROADMAP.md` — Roadmap por fases com gating via PRs.
- `TOKENOMICS.md` — Detalhamento da tese de valor e modelo de taxas.

## 5) Diretrizes para o Hackathon
- Publicar evidências verificáveis (Explorer e CI) para deploys e testes.
- Evitar números/percentuais sem fonte; quando houver, incluir links.
- Manter `main` utilizável para demonstração e avaliação dos jurados.

---

Para dúvidas sobre estrutura e versionamento, consulte também `ESTRUTURA_ORGANIZADA.md`.
