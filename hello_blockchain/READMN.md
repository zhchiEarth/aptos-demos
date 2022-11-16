1. 编译
   aptos move compile --named-addresses hello_blockchain=default

2.test
aptos move test --named-addresses hello_blockchain=default

3 . 发布
aptos move publish --named-addresses hello_blockchain=default

4.set_message

```bash
aptos move run \
  --function-id 'default::message::set_message' \
  --args 'string:hello, blockchain'
```

5. 查看 MessageHolder
   https://fullnode.devnet.aptoslabs.com/v1/accounts/$account_addr/resource/$account_addr::message::MessageHolder

6. 查看 message_change_events
   https://fullnode.devnet.aptoslabs.com/v1/accounts/$account_addr/events/$account_addr::message::MessageHolder/message_change_events
