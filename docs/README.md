# Documentação Correntes DApp — Índice

- Tese (visão para jurados): `THESIS.md`
- Arquitetura técnica: `ARCHITECTURE.md`
- Tokenomics e regras de oferta: `TOKENOMICS.md`
- Contratos e segurança: `CONTRACTS.md`
- Deploy e execução: `DEPLOYMENT.md`
- Diretrizes legais e conformidade: `LEGAL.md`
- Pitch Deck: `pitch/pitch-deck.pdf`
- Demo e capturas: `demo/`

## Ambiente dev.fun
- RPC Endpoint: `https://rpc.dev.fun/c85be3993acd67cde661`
- Devbase Endpoint: `https://devbase.dev.fun`
- App ID do DApp: `c85be3993acd67cde661`

Sugestão de leitura:
1) `docs/THESIS.md` → visão central (iniciante)
2) `TOKENOMICS.md` → modelo de oferta e repasse
3) `ARCHITECTURE.md` → componentes e fluxos
4) `CONTRACTS.md` → garantias e validações
5) `DEPLOYMENT.md` → como rodar e medir
6) `LEGAL.md` → conformidade e avisos

## Temas
- Visão e Tese: `THESIS.md`
- Arquitetura Técnica: `ARCHITECTURE.md`
- Tokenomics: `TOKENOMICS.md`
- Contratos & Segurança: `CONTRACTS.md` e `Analisederisco`
- Deploy & Execução: `DEPLOYMENT.md`
- Versionamento no GitHub: `GITHUB_VERSIONING.md`
- Integrações & SDK: `dev.fun/` e `devbase/`
- Evidências & Métricas: `RELATORIO_DEPLOYS_CONTRATOS.md` e `SOLANA_DEPLOYS_ADDRESSES.md`
- Legal & Conformidade: `LEGAL.md`
- Pitch & Demo: `pitch/` e `demo/`

## Navegação Rápida
- Apresentação do repositório: `../GITHUB_PRESENTATION.md`
- Endereços de deploy (Solana): `../SOLANA_DEPLOY_ADDRESSES.md`
- Evidências de deploy e testes: `../RELATORIO_DEPLOYS_CONTRATOS.md`
- MVP no dev.fun: `https://dev.fun/p/c85be3993acd67cde661`

## Integração dev.fun — Guia Rápido
Dependências recomendadas:
```
@devfunlabs/web-sdk  |  @solana/wallet-adapter-react  |  @solana/web3.js
```
Exemplo de uso seguro (assinatura via wallet conectada):
```ts
import { useDevapp } from '@devfunlabs/web-sdk'
import { Connection, VersionedTransaction, PublicKey } from '@solana/web3.js'

export function useDevfunExample() {
  const { userWallet, sendTransaction } = useDevapp()
  const connection = new Connection('https://rpc.dev.fun/c85be3993acd67cde661')

  const sendUnsigned = async (buildTx: (p: PublicKey) => Promise<VersionedTransaction>) => {
    if (!userWallet) throw new Error('Wallet não conectada')
    const tx = await buildTx(new PublicKey(userWallet))
    const sig = await sendTransaction(tx, connection)
    return sig
  }

  return { sendUnsigned }
}
```
Princípios:
- Não gerar `Keypair` para assinar transações do usuário.
- Construir transações não assinadas e delegar a assinatura ao wallet-adapter.
- Validar conexão de wallet e fornecer feedback ao usuário.
- Referência completa: `Analisederisco`.

## Segurança — Regras Essenciais
- Zero exposição de chaves privadas; sem armazenamento em código ou localStorage.
- Todas as transações devem passar por `wallet.signTransaction()`.
- Tratamento de rejeição de transação e estados de loading claros.
- Auditoria e validação pública: consultar `RELATORIO_DEPLOYS_CONTRATOS.md`.

## Padrões de Versionamento
- Branches de trabalho: `feature/*` (ex.: `feature/royalty-claims`).
- Commits descritivos: `type(scope): descrição` (ex.: `feat(royalties): implementar claim`).
- Abrir PRs com checklist e evidências. Diretrizes: `GITHUB_VERSIONING.md`.

## Estilo e Formatação
- Linguagem técnica e objetiva; evitar coloquialismos.
- Sem emojis ou ícones; títulos claros e consistentes.
- Links diretos para arquivos e fontes verificáveis.

## Próximos Passos
- Consolidar evidências públicas nos documentos de deploy.
- Atualizar endereços e artefatos em `SOLANA_DEPLOY_ADDRESSES.md`.
- Manter `main` utilizável para demonstrações.

## Contatos
- Email: `contact@flowcash.records`
- Comunidade: Discord Flow Ca$h
- Social: `@FlowCashRecords`
