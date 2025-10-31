# 🔑 Guia de Configuração de Chaves API - $CORRENTES

Este guia te ajudará a configurar todas as chaves API necessárias para o projeto $CORRENTES no dev.fun.

## 📋 Pré-requisitos

1. ✅ Conta no [dev.fun](https://dev.fun)
2. ✅ Projeto $CORRENTES criado no dev.fun
3. ✅ Acesso ao painel de configurações do projeto

## 🚀 Passo a Passo

### 1. Acessar o Painel do dev.fun

1. Acesse [dev.fun](https://dev.fun)
2. Faça login na sua conta
3. Navegue até o projeto **$CORRENTES** (APP_ID: `c85be3993acd67cde661`)
4. Clique em **"Secret Keys"** no menu lateral

### 2. Configurar Chaves Principais

#### 🔐 Chaves já Configuradas (Não Alterar)
```bash
APP_ID=c85be3993acd67cde661
DEVBASE_ENDPOINT=https://devbase.dev.fun
RPC_ENDPOINT=https://rpc.dev.fun/c85be3993acd67cde661
```

#### 🔑 Chaves que Você Precisa Configurar

##### **JWT_SECRET** (Obrigatório)
- **O que é:** Chave secreta para autenticação JWT
- **Como gerar:** Use um gerador online ou comando:
  ```bash
  openssl rand -base64 32
  ```
- **Exemplo:** `[SUA_CHAVE_JWT_SECRETA_AQUI]` (mínimo 32 caracteres aleatórios)
- **Onde configurar:** No campo "JWT_SECRET" do dev.fun

##### **TWITTER_OAUTH_CLIENT_ID** e **TWITTER_OAUTH_CLIENT_SECRET**
- **O que é:** Credenciais para integração com Twitter/X
- **Como obter:**
  1. Acesse [Twitter Developer Portal](https://developer.twitter.com/en/portal/dashboard)
  2. Crie uma nova aplicação ou use uma existente
  3. Vá em "Keys and tokens"
  4. Copie o "Client ID" e "Client Secret"
- **Onde configurar:** Nos campos correspondentes no dev.fun

### 3. Configurar Chaves Opcionais (Recomendadas)

##### **COINMARKETCAP_API_KEY**
- **O que é:** Para dados de preços de criptomoedas
- **Como obter:**
  1. Acesse [CoinMarketCap API](https://coinmarketcap.com/api/)
  2. Crie uma conta gratuita
  3. Gere uma API Key no dashboard
- **Plano gratuito:** 10.000 calls/mês

##### **HELIUS_API_KEY**
- **O que é:** RPC alternativo para Solana (mais rápido)
- **Como obter:**
  1. Acesse [Helius](https://helius.xyz/)
  2. Crie uma conta
  3. Gere uma API Key no dashboard
- **Plano gratuito:** 100.000 requests/mês

### 4. Configurar Banco de Dados (Se Necessário)

##### **DATABASE_URL**
- **Formato:** `postgresql://usuario:senha@host:porta/database`
- **Opções gratuitas:**
  - [Supabase](https://supabase.com/) - PostgreSQL gratuito
  - [Railway](https://railway.app/) - PostgreSQL com plano gratuito
  - [Neon](https://neon.tech/) - PostgreSQL serverless

##### **REDIS_URL**
- **Formato:** `redis://host:porta` ou `redis://usuario:senha@host:porta`
- **Opções gratuitas:**
  - [Upstash](https://upstash.com/) - Redis serverless
  - [Redis Cloud](https://redis.com/redis-enterprise-cloud/) - 30MB gratuito

## 🎯 Configuração no dev.fun

### Interface "Secret Keys"

1. **Nome da Chave:** Digite exatamente como mostrado (ex: `JWT_SECRET`)
2. **Valor:** Cole o valor da chave (sem aspas)
3. **Clique em ✅** para salvar
4. **Repita** para cada chave

### Exemplo de Configuração:

| Nome | Valor |
|------|-------|
| `JWT_SECRET` | `minha_chave_super_secreta_32_chars` |
| `TWITTER_OAUTH_CLIENT_ID` | `seu_client_id_aqui` |
| `TWITTER_OAUTH_CLIENT_SECRET` | `seu_client_secret_aqui` |
| `COINMARKETCAP_API_KEY` | `sua_chave_cmc_aqui` |
| `HELIUS_API_KEY` | `sua_chave_helius_aqui` |

## ✅ Verificação

Após configurar todas as chaves:

1. ✅ Verifique se todas as chaves estão salvas no dev.fun
2. ✅ Teste a conexão do projeto
3. ✅ Verifique se não há erros no console

## 🆘 Problemas Comuns

### ❌ "JWT_SECRET muito curto"
- **Solução:** Use pelo menos 32 caracteres

### ❌ "Twitter OAuth inválido"
- **Solução:** Verifique se copiou Client ID e Secret corretamente
- **Dica:** Certifique-se de que a aplicação Twitter está ativa

### ❌ "RPC endpoint não responde"
- **Solução:** Verifique se o HELIUS_API_KEY está correto
- **Fallback:** O sistema usará o RPC padrão do dev.fun

## 🔒 Segurança

⚠️ **IMPORTANTE:**
- ❌ **NUNCA** compartilhe suas chaves secretas
- ❌ **NUNCA** commite chaves no Git
- ✅ Use apenas o painel "Secret Keys" do dev.fun
- ✅ Mantenha suas chaves atualizadas

## 📞 Suporte

Se precisar de ajuda:
1. 📧 Suporte do dev.fun: [support@dev.fun](mailto:support@dev.fun)
2. 📖 Documentação: [docs.dev.fun](https://docs.dev.fun)
3. 💬 Discord da comunidade dev.fun

---

**🎉 Pronto!** Após configurar todas as chaves, seu projeto $CORRENTES estará totalmente funcional no dev.fun!