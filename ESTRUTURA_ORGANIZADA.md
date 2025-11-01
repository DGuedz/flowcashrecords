# Estrutura Organizada do Projeto Flow Ca$h (Solana)

## Estrutura de Diretórios

```
flowcashrecords/
├── README.md                 # Documentação principal e acesso rápido
├── .gitignore                # Arquivos ignorados pelo Git
├── .gitattributes            # Atributos Git
├── apps/
│   └── web/                  # Frontend (Next.js/React)
├── backend/
│   └── solana/               # Programas/serviços do backend Solana
├── services/
│   └── blockchain/           # Scripts/integrações (Kamino, Wormhole, etc.)
├── docs/
│   ├── architecture/         # Documentos de arquitetura
│   ├── deployment/           # Guias de deploy
│   └── strategy/             # Roadmap e estratégia
├── assets/
│   ├── images/               # Imagens do projeto
│   └── logos/                # Logos e marcas
└── SOLANA_DEPLOY_ADDRESSES.md # Program IDs e evidências
```

## Organização por Tipo de Arquivo

### Imagens e Assets
- Todas as imagens (.png, .jpg, .jpeg, .gif) em `assets/images/`
- Logos e marcas em `assets/logos/`
- Arquivos SVG e vetoriais organizados

### Documentos
- Documentos PDF, Word e texto em `assets/documents/`
- Documentação técnica em `docs/`
- Arquivos de configuração importantes na raiz

### Código Fonte
- Frontend: Aplicação web em `apps/web/`
- Backend Solana: Programas/serviços em `backend/solana/`
- Serviços Blockchain: Integrações em `services/blockchain/`
- Scripts: Deploy/teste em seus respectivos diretórios

### Configurações
- Arquivos de configuração mantidos na raiz
- Variáveis de ambiente no padrão `.env.example`
- Configurações específicas em seus respectivos diretórios

## Diretrizes

1. Somente Solana: Remover referências a Ethereum/Hardhat quando não aplicável.
2. Evidências públicas: Endereços e transações em `SOLANA_DEPLOY_ADDRESSES.md`.
3. Padronização: Estrutura consistente em apps/backend/services/docs.
4. Documentação viva: Atualizar este arquivo conforme evolução do projeto.

## Próximos Passos

1. Verificar se todas as importações ainda funcionam
2. Atualizar paths em scripts e configurações
3. Testar builds e deploys com a nova estrutura
4. Documentar dependências e requisitos

## Checklist de Verificação

- [ ] Frontend web roda em `apps/web/`
- [ ] Backend Solana compila/roda em `backend/solana/`
- [ ] Scripts de integração funcionam em `services/blockchain/`
- [ ] Documentação de deploy e addresses está atualizada em `docs/` e raiz

Esta organização foca o projeto Flow Ca$h em Solana e facilita manutenção, colaboração e auditoria.
