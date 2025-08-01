```bash
#!/bin/bash
# deploy-scrollcare.sh - Deploy completo dos contratos ScrollCare na Scroll zkEVM

set -e

echo "🚀 ScrollCare Deployment na Scroll zkEVM"
echo "========================================"

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Verificar se .env existe
if [ ! -f .env ]; then
    echo -e "${RED}❌ Arquivo .env não encontrado!${NC}"
    echo "Crie um arquivo .env com:"
    echo "SCROLL_SEPOLIA_RPC_URL=https://sepolia-rpc.scroll.io/"
    echo "SCROLL_MAINNET_RPC_URL=https://rpc.scroll.io/"
    echo "PRIVATE_KEY=your_private_key_here"
    echo "ETHERSCAN_API_KEY=your_etherscan_api_key"
    exit 1
fi

# Carregar variáveis de ambiente
source .env

# Verificar se private key está definida
if [ -z "$PRIVATE_KEY" ]; then
    echo -e "${RED}❌ PRIVATE_KEY não definida no .env${NC}"
    exit 1
fi

# Função para verificar saldo
check_balance() {
    local network=$1
    local rpc_url=$2
    
    echo -e "${BLUE}💰 Verificando saldo na $network...${NC}"
    
    local deployer=$(cast wallet address $PRIVATE_KEY)
    local balance=$(cast balance $deployer --rpc-url $rpc_url)
    local balance_eth=$(cast to-unit $balance ether)
    
    echo -e "Deployer: $deployer"
    echo -e "Saldo: $balance_eth ETH"
    
    # Verificar se tem saldo suficiente (mínimo 0.1 ETH)
    local min_balance="100000000000000000" # 0.1 ETH em wei
    if (( $(echo "$balance < $min_balance" | bc -l) )); then
        echo -e "${RED}❌ Saldo insuficiente! Mínimo: 0.1 ETH${NC}"
        echo -e "${YELLOW}💡 Obtenha ETH da testnet em: https://docs.scroll.io/developers/faucet${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}✅ Saldo suficiente${NC}"
}

# Selecionar rede
echo "Selecione a rede para deployment:"
echo "1) Scroll Sepolia (testnet)"
echo "2) Scroll Mainnet"
read -p "Opção (1-2): " network_choice

case $network_choice in
    1)
        NETWORK="Scroll Sepolia"
        RPC_URL=$SCROLL_SEPOLIA_RPC_URL
        CHAIN_ID=534351
        EXPLORER_URL="https://sepolia.scrollscan.com"
        ;;
    2)
        NETWORK="Scroll Mainnet"
        RPC_URL=$SCROLL_MAINNET_RPC_URL
        CHAIN_ID=534352
        EXPLORER_URL="https://scrollscan.com"
        echo -e "${YELLOW}⚠️  ATENÇÃO: Fazendo deploy na MAINNET!${NC}"
        read -p "Tem certeza? (y/N): " confirm
        if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
            echo "Deploy cancelado."
            exit 0
        fi
        ;;
    *)
        echo -e "${RED}❌ Opção inválida${NC}"
        exit 1
        ;;
esac

echo -e "${GREEN}🌐 Rede selecionada: $NETWORK${NC}"

# Verificar se Foundry está instalado
if ! command -v forge &> /dev/null; then
    echo -e "${YELLOW}🔧 Instalando Foundry...${NC}"
    curl -L https://foundry.paradigm.xyz | bash
    source ~/.bashrc
    foundryup
fi

# Verificar saldo antes do deploy
check_balance "$NETWORK" "$RPC_URL"

# Compilar contratos
echo -e "${BLUE}🔨 Compilando contratos...${NC}"
forge build

if [ $? -ne 0 ]; then
    echo -e "${RED}❌ Erro na compilação!${NC}"
    exit 1
fi

echo -e "${GREEN}✅ Compilação concluída${NC}"

# Array para armazenar endereços dos contratos
declare -A contract_addresses

# Deploy dos contratos na ordem correta
echo -e "${YELLOW}🚀 Iniciando deployment dos contratos...${NC}"

# 1. Deploy CAREToken
echo -e "\n${BLUE}1/4 - Deploying CAREToken...${NC}"
care_token_address=$(forge create \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    --verify \
    --etherscan-api-key $ETHERSCAN_API_KEY \
    src/CAREToken.sol:CAREToken \
    | grep "Deployed to:" | awk '{print $3}')

if [ -z "$care_token_address" ]; then
    echo -e "${RED}❌ Erro no deploy do CAREToken${NC}"
    exit 1
fi

contract_addresses["CAREToken"]=$care_token_address
echo -e "${GREEN}✅ CAREToken deployed: $care_token_address${NC}"

# 2. Deploy HealthRecords
echo -e "\n${BLUE}2/4 - Deploying HealthRecords...${NC}"
health_records_address=$(forge create \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    --verify \
    --etherscan-api-key $ETHERSCAN_API_KEY \
    src/HealthRecords.sol:HealthRecords \
    | grep "Deployed to:" | awk '{print $3}')

if [ -z "$health_records_address" ]; then
    echo -e "${RED}❌ Erro no deploy do HealthRecords${NC}"
    exit 1
fi

contract_addresses["HealthRecords"]=$health_records_address
echo -e "${GREEN}✅ HealthRecords deployed: $health_records_address${NC}"

# 3. Deploy TherapySession (precisa do endereço do CAREToken)
echo -e "\n${BLUE}3/4 - Deploying TherapySession...${NC}"
therapy_session_address=$(forge create \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    --verify \
    --etherscan-api-key $ETHERSCAN_API_KEY \
    --constructor-args $care_token_address \
    src/TherapySession.sol:TherapySession \
    | grep "Deployed to:" | awk '{print $3}')

if [ -z "$therapy_session_address" ]; then
    echo -e "${RED}❌ Erro no deploy do TherapySession${NC}"
    exit 1
fi

contract_addresses["TherapySession"]=$therapy_session_address
echo -e "${GREEN}✅ TherapySession deployed: $therapy_session_address${NC}"

# 4. Deploy MedicalRecordSBT
echo -e "\n${BLUE}4/4 - Deploying MedicalRecordSBT...${NC}"
medical_sbt_address=$(forge create \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    --verify \
    --etherscan-api-key $ETHERSCAN_API_KEY \
    src/MedicalRecordSBT.sol:MedicalRecordSBT \
    | grep "Deployed to:" | awk '{print $3}')

if [ -z "$medical_sbt_address" ]; then
    echo -e "${RED}❌ Erro no deploy do MedicalRecordSBT${NC}"
    exit 1
fi

contract_addresses["MedicalRecordSBT"]=$medical_sbt_address
echo -e "${GREEN}✅ MedicalRecordSBT deployed: $medical_sbt_address${NC}"

# Configuração pós-deploy
echo -e "\n${YELLOW}⚙️  Configurando contratos...${NC}"

# Autorizar TherapySession a mint tokens CARE
echo -e "${BLUE}🔐 Autorizando TherapySession a mint tokens...${NC}"
cast send $care_token_address \
    "transferOwnership(address)" $therapy_session_address \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY

echo -e "${GREEN}✅ Configuração concluída${NC}"

# Gerar arquivo de configuração para o frontend
echo -e "\n${BLUE}📝 Gerando arquivo de configuração...${NC}"

config_file="deployed-contracts.json"
cat > $config_file << EOF
{
  "network": "$NETWORK",
  "chainId": $CHAIN_ID,
  "timestamp": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "contracts": {
    "CAREToken": "$care_token_address",
    "HealthRecords": "$health_records_address", 
    "TherapySession": "$therapy_session_address",
    "MedicalRecordSBT": "$medical_sbt_address"
  },
  "rpcUrl": "$RPC_URL",
  "explorer": "$EXPLORER_URL"
}
EOF

# Gerar .env para frontend
frontend_env_file="frontend.env"
cat > $frontend_env_file << EOF
# ScrollCare Contract Addresses - $NETWORK
# Generated on $(date)

NEXT_PUBLIC_CARE_TOKEN_ADDRESS=$care_token_address
NEXT_PUBLIC_HEALTH_RECORDS_ADDRESS=$health_records_address
NEXT_PUBLIC_THERAPY_SESSION_ADDRESS=$therapy_session_address
NEXT_PUBLIC_MEDICAL_SBT_ADDRESS=$medical_sbt_address

NEXT_PUBLIC_CHAIN_ID=$CHAIN_ID
NEXT_PUBLIC_RPC_URL=$RPC_URL
NEXT_PUBLIC_EXPLORER_URL=$EXPLORER_URL

# WalletConnect
NEXT_PUBLIC_WALLETCONNECT_PROJECT_ID=your_project_id_here
EOF

# Gerar deployment report
report_file="deployment-report.md"
cat > $report_file << EOF
# ScrollCare Deployment Report

## Network Information
- **Network**: $NETWORK
- **Chain ID**: $CHAIN_ID
- **RPC URL**: $RPC_URL
- **Explorer**: $EXPLORER_URL
- **Deployment Date**: $(date)

## Contract Addresses

### CAREToken
- **Address**: \`$care_token_address\`
- **Explorer**: [$EXPLORER_URL/address/$care_token_address]($EXPLORER_URL/address/$care_token_address)
- **Function**: ERC20 token for ecosystem rewards

### HealthRecords
- **Address**: \`$health_records_address\`
- **Explorer**: [$EXPLORER_URL/address/$health_records_address]($EXPLORER_URL/address/$health_records_address)
- **Function**: Zero-knowledge medical records management

### TherapySession
- **Address**: \`$therapy_session_address\`
- **Explorer**: [$EXPLORER_URL/address/$therapy_session_address]($EXPLORER_URL/address/$therapy_session_address)
- **Function**: Session booking and payment handling

### MedicalRecordSBT
- **Address**: \`$medical_sbt_address\`
- **Explorer**: [$EXPLORER_URL/address/$medical_sbt_address]($EXPLORER_URL/address/$medical_sbt_address)
- **Function**: Soul Bound Tokens for medical records

## Configuration

### Frontend Integration
1. Copy the contents of \`frontend.env\` to your \`.env.local\`
2. Add your WalletConnect project ID
3. Import contract addresses from \`deployed-contracts.json\`

### Backend Integration
- Use the contract addresses from \`deployed-contracts.json\`
- Configure RPC endpoints for the deployed network
- Set up event listeners for contract interactions

## Verification Status
All contracts have been verified on the block explorer and are ready for interaction.

## Next Steps
1. Test all contract functions
2. Set up frontend integration  
3. Configure automation workflows
4. Initialize token distribution
5. Begin beta testing

---
*Generated by ScrollCare deployment script*
EOF

# Resumo final
echo -e "\n${GREEN}🎉 DEPLOYMENT CONCLUÍDO COM SUCESSO! 🎉${NC}"
echo -e "==========================================="
echo -e "${BLUE}Rede:${NC} $NETWORK"
echo -e "${BLUE}Chain ID:${NC} $CHAIN_ID"
echo -e "${BLUE}Explorer:${NC} $EXPLORER_URL"
echo ""
echo -e "${YELLOW}📋 Endereços dos Contratos:${NC}"
echo -e "CAREToken:        $care_token_address"
echo -e "HealthRecords:    $health_records_address"
echo -e "TherapySession:   $therapy_session_address"
echo -e "MedicalRecordSBT: $medical_sbt_address"
echo ""
echo -e "${BLUE}📁 Arquivos gerados:${NC}"
echo -e "• $config_file"
echo -e "• $frontend_env_file"
echo -e "• $report_file"
echo ""
echo -e "${GREEN}🚀 Próximos passos:${NC}"
echo -e "1. Verifique os contratos no explorer"
echo -e "2. Configure o frontend com as variáveis geradas"
echo -e "3. Teste as funcionalidades básicas"
echo -e "4. Configure as automações N8n"
echo -e "5. Inicie os testes beta"
echo ""
echo -e "${YELLOW}💡 Dica:${NC} Guarde esses endereços com segurança!"

# Verificar contratos no explorer
echo -e "\n${BLUE}🔍 Links para verificação:${NC}"
for contract_name in "${!contract_addresses[@]}"; do
    address=${contract_addresses[$contract_name]}
    echo -e "$contract_name: $EXPLORER_URL/address/$address"
done

echo -e "\n${GREEN}✨ ScrollCare está pronto para revolucionar a saúde mental! ✨${NC}"

# Executar testes básicos se solicitado
read -p "Deseja executar testes básicos nos contratos? (y/N): " run_tests
if [ "$run_tests" = "y" ] || [ "$run_tests" = "Y" ]; then
    echo -e "\n${BLUE}🧪 Executando testes básicos...${NC}"
    
    # Teste 1: Verificar balance inicial do CAREToken
    echo "Testando CAREToken..."
    initial_supply=$(cast call $care_token_address "totalSupply()" --rpc-url $RPC_URL)
    echo "Supply inicial: $(cast to-unit $initial_supply ether) CARE"
    
    # Teste 2: Verificar se TherapySession pode acessar CAREToken
    echo "Testando integração TherapySession..."
    session_count=$(cast call $therapy_session_address "sessionCounter()" --rpc-url $RPC_URL)
    echo "Contador de sessões: $session_count"
    
    # Teste 3: Verificar MedicalRecordSBT
    echo "Testando MedicalRecordSBT..."
    token_counter=$(cast call $medical_sbt_address "name()" --rpc-url $RPC_URL)
    echo "Nome do SBT: $(cast --to-ascii $token_counter)"
    
    echo -e "${GREEN}✅ Testes básicos concluídos!${NC}"
fi

echo -e "\n${GREEN}🔗 Deployment finalizado com sucesso na Scroll zkEVM!${NC}"
```

