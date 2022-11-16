1. 编译
   aptos-bulletproof move compile --named-addresses MoonCoin=local --save-metadata

2. test
   aptos move test --named-addresses MoonCoin=local

3. 发布
   aptos-bulletproof move publish --profile local --named-addresses MoonCoin=local

4. register
   要使用硬币，实体必须 CoinStore 在其帐户上为其注册：

```bash
aptos move run \
  --function-id '0x1::managed_coin::register' \
  --type-args '0x5297b2ac7168b32f5080b7c2e0bb8556a58668bfa2c0cc0c50e6bdb3654fb3a8::moon_coin::MoonCoin' \
  --sender-account 0x3747967d9963f0b72bb5b4af39c6e196d4f4566c5d08107b78f7ea78f3b471ab \
  --private-key 0xb741972473ceef686ffdceac6a50ef97a9041209383e6440e9d6c27c6ae99472
```

5. mint

```bash
aptos move run \
  --function-id '0x1::managed_coin::mint' \
  --type-args '0x5297b2ac7168b32f5080b7c2e0bb8556a58668bfa2c0cc0c50e6bdb3654fb3a8::moon_coin::MoonCoin' \
  --sender-account default --args 'address:0x3747967d9963f0b72bb5b4af39c6e196d4f4566c5d08107b78f7ea78f3b471ab' 'u64:10000'
```

6. burn
   只有 default 才可以 burn

```bash
aptos move run \
  --function-id '0x1::managed_coin::burn' \
  --type-args '0x5297b2ac7168b32f5080b7c2e0bb8556a58668bfa2c0cc0c50e6bdb3654fb3a8::moon_coin::MoonCoin' \
  --sender-account default --args 'u64:50'
```

7. 查看 moon_coin 余额
   https://fullnode.devnet.aptoslabs.com/v1/accounts/${account}/resource/0x1::coin::CoinStore<${account}::moon_coin::MoonCoin>
