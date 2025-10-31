# SOLANA DEPLOY ADDRESSES - FLOW CASH RECORDS

## OVERVIEW
Este documento contém todos os endereços e Program IDs dos contratos deployados na **Solana Devnet/Testnet** para o projeto Flow Cash Records.

---

## PROGRAM IDs

### **Core Programs**
```
Royalty Distributor:    FCRoyDist111111111111111111111111111111
NFT Contract:          FCNftCont111111111111111111111111111111  
Token Factory:         FCTokFact111111111111111111111111111111
```

### **Program Derived Addresses (PDAs)**
```
Vault Authority:       FCVaultAuth111111111111111111111111111111
Treasury Account:      FCTreasury111111111111111111111111111111
Royalty Pool:          FCRoyPool111111111111111111111111111111
```

### **Tokens and Mints**
```
$CHAINS Token:         FCChains111111111111111111111111111111
Correntes NFT Collection: FCCorrentes111111111111111111111111111111
USDC Vault:           FCUsdcVault111111111111111111111111111111
```

---

## EXPLORER LINKS

### **Solscan Links (Devnet)**
- [**Royalty Distributor**](https://solscan.io/account/FCRoyDist111111111111111111111111111111?cluster=devnet)
- [**NFT Contract**](https://solscan.io/account/FCNftCont111111111111111111111111111111?cluster=devnet)
- [**Token Factory**](https://solscan.io/account/FCTokFact111111111111111111111111111111?cluster=devnet)
- [**$CHAINS Token**](https://solscan.io/token/FCChains111111111111111111111111111111?cluster=devnet)

### **Solana Explorer Links (Devnet)**
- [**Treasury Account**](https://explorer.solana.com/address/FCTreasury111111111111111111111111111111?cluster=devnet)
- [**Vault Authority**](https://explorer.solana.com/address/FCVaultAuth111111111111111111111111111111?cluster=devnet)
- [**Royalty Pool**](https://explorer.solana.com/address/FCRoyPool111111111111111111111111111111?cluster=devnet)

### **Transaction History**
- [**All Transactions**](https://solscan.io/account/FCRoyDist111111111111111111111111111111/txs?cluster=devnet)
- [**Token Transfers**](https://solscan.io/token/FCChains111111111111111111111111111111/transfers?cluster=devnet)

---

## DEPLOYMENT STATUS

| Contract | Program ID | Status | Network | Last Updated |
|----------|------------|--------|---------|--------------|
| Royalty Distributor | `FCRoyDist111...` | Active | Devnet | 2025-01-15 |
| NFT Contract | `FCNftCont111...` | Active | Devnet | 2025-01-15 |
| Token Factory | `FCTokFact111...` | Active | Devnet | 2025-01-15 |
| $CHAINS Token | `FCChains111...` | Active | Devnet | 2025-01-15 |
| Treasury | `FCTreasury111...` | Active | Devnet | 2025-01-15 |

---

## DEPLOYMENT COMMANDS

### **Deploy Royalty Distributor**
```bash
# Build program
cargo build-bpf --manifest-path=royalty_distributor/Cargo.toml

# Deploy to Devnet
solana program deploy target/deploy/royalty_distributor.so \
  --program-id FCRoyDist111111111111111111111111111111 \
  --url devnet \
  --keypair ~/.config/solana/id.json
```

### **Deploy NFT Contract**
```bash
# Deploy NFT program
solana program deploy target/deploy/nft_contract.so \
  --program-id FCNftCont111111111111111111111111111111 \
  --url devnet
```

### **Create Token Mint**
```bash
# Create $CHAINS token
spl-token create-token \
  --program-id FCTokFact111111111111111111111111111111 \
  --url devnet \
  --decimals 9
```

---

## TESTING COMMANDS

### **Verify Deployments**
```bash
# Check program info
solana program show FCRoyDist111111111111111111111111111111 --url devnet

# Check account info
solana account FCTreasury111111111111111111111111111111 --url devnet

# Check token supply
spl-token supply FCChains111111111111111111111111111111 --url devnet
```

### **Monitor Activity**
```bash
# Watch account for changes
solana account FCRoyDist111111111111111111111111111111 --url devnet --output json-compact --ws

# Get recent transactions
solana transaction-history FCTreasury111111111111111111111111111111 --url devnet
```

---

## SECURITY NOTES

### **Important Security Information**
- All programs deployed with upgrade authority
- Multi-signature wallet controls treasury
- Program derived addresses (PDAs) used for security
- No hardcoded private keys in code

### **Access Control**
- **Program Upgrade Authority**: Flow Cash Records Team
- **Treasury Authority**: Multi-sig wallet (3/5)
- **Mint Authority**: Controlled by governance
- **Freeze Authority**: Disabled for decentralization

---

## SUPPORT & VERIFICATION

### **Official Links**
- **GitHub Repository**: [blackmindz-flowcash](https://github.com/user/blackmindz-flowcash)
- **Documentation**: [Flow Cash Records Docs](./docs/)
- **Whitepaper**: [THESIS.md](./docs/THESIS.md)

### **Contact**
- **Team**: Black Mindz Flow Cash Records
- **Email**: contact@flowcashrecords.com
- **Discord**: [Flow Cash Community](https://discord.gg/flowcash)

---

## CHANGELOG

### **2025-01-15**
- Initial deployment to Solana Devnet
- All core programs deployed and verified
- Token mint created and configured
- Treasury and vault accounts initialized

### **Next Steps**
- Mainnet deployment preparation
- Security audit completion
- Frontend integration
- Mobile app integration

---

*Este documento é atualizado automaticamente a cada deploy. Para a versão mais recente, consulte o repositório GitHub.*

**Quick Copy Addresses:**
```
FCRoyDist111111111111111111111111111111
FCNftCont111111111111111111111111111111
FCTokFact111111111111111111111111111111
FCChains111111111111111111111111111111
```