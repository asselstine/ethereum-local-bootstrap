source config.sh
alias leth="geth \
  --port 3000 \
  --nodiscover \
  --maxpeers 0 \
  --datadir 'localnet' \
  --identity 'localnet' \
  --etherbase "$ETHERBASE" \
  --rpc \
  --rpcport 8545 \
  --rpcaddr 127.0.0.1 \
  --rpccorsdomain '*' \
  --rpcapi 'eth,net,web3' \
  --unlock '0' \
  --password "$PASSWORD_FILE"'
