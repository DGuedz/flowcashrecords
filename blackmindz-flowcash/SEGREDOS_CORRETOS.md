# 🔐 CONFIGURAÇÃO CORRETA DE SEGREDOS - FLOW CA$H

## 🎯 FORMATO CORRETO PARA DEV.FUN

### 📋 SEGREDOS OBRIGATÓRIOS:
```bash
# Autenticação
JWT_SECRET=$(openssl rand -base64 32)

# Twitter OAuth (Social Login)
TWITTER_OAUTH_CLIENT_ID=seu_client_id_twitter_aqui
TWITTER_OAUTH_CLIENT_SECRET=seu_client_secret_twitter_aqui

# Segurança Rate Limiting
RATE_LIMIT_WINDOW_MS=900000
RATE_LIMIT_MAX_REQUESTS=100
AUTH_RATE_LIMIT_WINDOW_MS=3600000
AUTH_RATE_LIMIT_MAX_ATTEMPTS=5
```

### 🚀 SEGREDOS RECOMENDADOS (MVP Premium):
```bash
# Dados em Tempo Real
COINMARKETCAP_API_KEY=sua_chave_coinmarketcap
HELIUS_API_KEY=sua_chave_helius_premium

# Integrações DeFi & Streaming
SPOTIFY_API_KEY=sua_chave_spotify_developer
MOONPAY_SECRET_KEY=sua_chave_moonpay_secret
KAMINO_RPC_KEY=sua_chave_kamino_premium
WORMHOLE_RELAYER_KEY=sua_chave_wormhole_relayer

# Rastreamento Musical
ISRC_TRACKING_API_KEY=sua_chave_isrc_tracking
ROYALTY_AGGREGATOR_KEY=sua_chave_royalty_aggregator
```

## 💻 USO CORRETO NO CÓDIGO:

### Exemplo 1: Acesso a Segredos via DevBase
```typescript
// FUNÇÃO CORRETA - Acessa segredos via $SECRETS
async function $FUNC_GET_SPOTIFY_DATA(trackId: string) {
  const response = await fetch(`https://api.spotify.com/v1/tracks/${trackId}`, {
    headers: {
      'Authorization': `Bearer ${$SECRETS.SPOTIFY_API_KEY}`,
      'Content-Type': 'application/json'
    }
  });
  return await response.json();
}

// FUNÇÃO CORRETA - Twitter OAuth
async function $FUNC_CONNECT_TWITTER(userWallet: string) {
  const oauthUrl = `https://oauth.dev.fun/twitter/login/${config.appId}/${userWallet}`;
  // ... lógica de conexão
}
```

### Exemplo 2: Rate Limiting com Segredos
```typescript
// Configuração de Rate Limiting
const RATE_LIMIT_CONFIG = {
  windowMs: parseInt($SECRETS.RATE_LIMIT_WINDOW_MS || '900000'),
  max: parseInt($SECRETS.RATE_LIMIT_MAX_REQUESTS || '100'),
  authWindowMs: parseInt($SECRETS.AUTH_RATE_LIMIT_WINDOW_MS || '3600000'),
  authMax: parseInt($SECRETS.AUTH_RATE_LIMIT_MAX_ATTEMPTS || '5')
};
```

## 🎵 SEGREDOS ESPECÍFICOS FLOW CA$H:

### Para Rastreamento ISRC (Inovação Principal):
```bash
# API para rastrear streams via ISRC
ISRC_API_KEY=sua_chave_isrc_api
MUSIC_BRAINZ_API_KEY=sua_chave_music_brainz

# Aggregator de Royalties
ROYALTY_PLATFORM_API_KEY=sua_chave_royalty_platform
DISTROKID_API_KEY=sua_chave_distrokid_opcional
```

### Para DeFi & Yield (Kamino Integration):
```bash
# Kamino Finance API
KAMINO_API_KEY=sua_chave_kamino_api
KAMINO_STRATEGY_ID=estrategia_conservadora

# Wormhole Cross-Chain
WORMHOLE_GUARDIAN_API=sua_chave_guardian_api
CCTP_API_KEY=sua_chave_cctp_cross_chain
```

## 🔧 COMANDOS PARA GERAR CHAVES:

### Gerar JWT Secret (OBRIGATÓRIO):
```bash
# Gerar chave JWT segura
openssl rand -base64 32
# Output: jksd7f8s7df87sdf87s8df7s8df78s7df87sdf87sd=
```

### Configurar Twitter Developer:
1. Acesse https://developer.twitter.com
2. Crie um novo App
3. Nas configurações, habilite OAuth 2.0
4. Copie `Client ID` e `Client Secret`

## 📊 BENEFÍCIOS DESTA CONFIGURAÇÃO:

- ✅ **Segurança Enterprise**: JWT com 256-bit encryption
- ✅ **Social Login**: Twitter OAuth funcionando
- ✅ **Dados Reais**: CoinMarketCap + Helius premium
- ✅ **DeFi Integration**: Kamino + Wormhole prontos
- ✅ **Streaming APIs**: Spotify integration para demo real
- ✅ **Rate Limiting**: Proteção contra ataques

## 🚨 NUNCA FAÇA ISSO:

```bash
# ❌ ERRADO - Formato incorreto
flowcash=APP_ID=value

# ❌ ERRADO - APP_ID redundante
APP_ID=c85be3993acd67cde661  # Já está no código!

# ❌ ERRADO - Chave exposta no frontend
const apiKey = "minha_chave_exposta"  // NUNCA isso!
```

## 📝 PRÓXIMOS PASSOS:

1. **Remover** o segredo redundante `flowcash=APP_ID=...` do dev.fun
2. **Adicionar** `JWT_SECRET` com `openssl rand -base64 32`
3. **Configurar** Twitter Developer para OAuth
4. **Adicionar** pelo menos 2 APIs reais (CoinMarketCap + Helius)

Esta configuração transformará seu MVP de "projeto básico" para **"plataforma profissional com APIs reais"**! 🏆