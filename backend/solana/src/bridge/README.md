# Bridge Layer

## Kamino Lend Integration

### Overview
DeFi yield optimization bridge that connects Flow Ca$h Records vaults with Kamino Lend protocol for automated USDC yield generation.

### Core Features

#### 1. Optimal Deposit Calculation
```typescript
const { depositAmount, liquidityReserve, projectedAPY } = 
  await kamino.calculateOptimalDeposit(totalBalance);
```

#### 2. Automated Rebalancing
```typescript
const rebalanceAction = await kamino.rebalanceVault(
  currentBalance, 
  pendingClaims
);
// Returns: 'deposit' | 'withdraw' | 'hold'
```

#### 3. Dual-Yield Calculation
```typescript
const dualYield = calculateDualYield(
  monthlyRoyalties,  // Cultural rewards from ISRC
  vaultBalance,      // Total USDC in vault
  kaminoAPY         // Current Kamino APY
);
```

### Integration Architecture

```
ISRC Royalties → Vault → Kamino Optimization → Dual-Yield Distribution
     ↓              ↓            ↓                    ↓
Streaming Data → USDC Deposit → DeFi Interest → NFT Holder Claims
```

### Configuration

#### Correntes Vault Config
```typescript
export const CORRENTES_KAMINO_CONFIG = {
  vaultAddress: "FCVault111111111111111111111111111111111",
  kaminoPoolAddress: "KaminoUSDC1111111111111111111111111111111",
  targetAPY: 8.0,        // exemplo; publique métricas reais com fonte
  liquidityBuffer: 15    // exemplo; parâmetros definidos por governança
};
```

### Métricas e Publicação
Estas métricas e parâmetros são exemplos de integração. Publique dados reais apenas com evidências (explorers, relatórios de CI, gas‑reporter).

#### Dual-Yield Breakdown
```typescript
interface DualYieldResult {
  culturalRewards: number;    // Streaming royalties
  protocolInterest: number;   // DeFi yield
  totalMonthlyYield: number;  // Combined monthly return
  combinedAPY: number;        // Total APY percentage
}
```

### Risk Management

#### Liquidity Management
- **Buffer Maintenance**: 15% of vault kept liquid
- **Claim Monitoring**: Real-time tracking of pending claims
- **Auto-Rebalancing**: Withdraw from Kamino when liquidity needed

#### Yield Optimization
- **Dynamic APY Tracking**: Monitor Kamino rates
- **Compound Interest**: Reinvest earned interest
- **Emergency Withdrawal**: Instant liquidity for large claims

### Cenários
Use cenários apenas como ilustração técnica. Valores numéricos devem vir acompanhados de fontes públicas e validação reproduzível.

This integration enables Flow Ca$h Records to be the first ISRC-native platform with automated DeFi optimization, maximizing returns for NFT holders while maintaining liquidity for instant claims.

## Legacy Bridge Features
- Interface de bridge via Wormhole (multi‑chain)
- Fluxos de lock/mint/burn, validação de mensagens
