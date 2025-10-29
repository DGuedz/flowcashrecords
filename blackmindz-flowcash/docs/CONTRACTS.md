# Flow Ca$h — Especificação de Contratos

## RoyaltyDistributor (Solana/Rust)
- deposit_royalties(amount: u64)
- claim_rewards(holder: Pubkey)
- invest_in_defi(params: KaminoParams)

## TokenFactory
- create_music_asset(metadata, supply, pricing)
- set_milestone(streams_target, price_update_rule)

## VaultManager
- deposit_usdc(amount)
- harvest_yield()
- distribute(holder_shares)

## NFT (Metaplex)
- Verificação de propriedade (para claim)
- Cálculo de shares por quantidade de NFTs