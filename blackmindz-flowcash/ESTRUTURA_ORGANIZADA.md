# Estrutura Organizada do Projeto Flow Ca$h

## 📁 Estrutura de Diretórios

```
blackmindz-flowcash/
├── 📄 README.md                 # Documentação principal
├── 📄 LICENSE                   # Licença do projeto
├── 📄 .gitignore                # Arquivos ignorados pelo Git
├── 📄 .env.example              # Variáveis de ambiente exemplo
├── 📄 .gitattributes           # Atributos Git
├── 📁 assets/                   # Recursos estáticos
│   ├── 📁 images/              # Imagens do projeto
│   ├── 📁 logos/               # Logos e marcas
│   └── 📁 documents/           # Documentação e arquivos PDF
├── 📁 contracts/               # Contratos inteligentes
│   ├── 📁 ethereum/            # Contratos Ethereum/Solidity
│   └── 📁 solana/              # Contratos Solana/Rust
├── 📁 scripts/                  # Scripts utilitários
│   ├── 📁 deploy/              # Scripts de deploy
│   └── 📁 test/                # Scripts de teste
├── 📁 frontend/                 # Aplicações frontend
│   ├── 📁 next/                # Next.js application
│   └── 📁 react/               # React application
├── 📁 backend/                  # Aplicações backend
│   └── 📁 solana/              # Backend Solana
├── 📁 docs/                     # Documentação técnica
│   ├── 📁 architecture/        # Documentos de arquitetura
│   └── 📁 deployment/          # Documentos de deploy
└── 📁 ignition/                 # Configurações Hardhat
```

## 🗂️ Organização por Tipo de Arquivo

### 📷 Imagens e Assets
- Todas as imagens (.png, .jpg, .jpeg, .gif) em `assets/images/`
- Logos e marcas em `assets/logos/`
- Arquivos SVG e vetoriais organizados

### 📄 Documentos
- Documentos PDF, Word e texto em `assets/documents/`
- Documentação técnica em `docs/`
- Arquivos de configuração importantes na raiz

### 💻 Código Fonte
- **Frontend**: Aplicações Next.js e React organizadas
- **Backend**: Serviços Node.js e Solana separados
- **Contratos**: Ethereum e Solana em diretórios distintos
- **Scripts**: Deploy e teste separados por função

### ⚙️ Configurações
- Arquivos de configuração mantidos na raiz
- Variáveis de ambiente no padrão `.env.example`
- Configurações específicas em seus respectivos diretórios

## 🔄 Mudanças Realizadas

1. **Organização por categoria**: Arquivos movidos para diretórios específicos
2. **Remoção de duplicatas**: Diretórios desnecessários removidos
3. **Padronização**: Estrutura consistente para todo o projeto
4. **Documentação**: Este arquivo criado para referência futura

## 🚀 Próximos Passos

1. Verificar se todas as importações ainda funcionam
2. Atualizar paths em scripts e configurações
3. Testar builds e deploys com a nova estrutura
4. Documentar dependências e requisitos

## 📋 Checklist de Verificação

- [ ] Frontend Next.js funciona em `frontend/next/`
- [ ] Frontend React funciona em `frontend/react/`
- [ ] Backend Solana funciona em `backend/solana/`
- [ ] Contratos compilam em seus respectivos diretórios
- [ ] Scripts de deploy funcionam em `scripts/deploy/`
- [ ] Scripts de teste funcionam em `scripts/test/`

Esta organização facilitará a manutenção, colaboração e escalabilidade do projeto Flow Ca$h.