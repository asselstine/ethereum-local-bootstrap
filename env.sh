source config.sh
if [[ $ETHERBASE ]];
then
  ETHERBASE_PARAM="--etherbase '$ETHERBASE'"
fi
alias leth="geth \
  --port 3000 \
  --nodiscover \
  --maxpeers 0 \
  --datadir "$DATADIR" \
  "$ETHERBASE_PARAM" \
  --identity 'localnet' \
  --rpc \
  --rpcport 8545 \
  --rpcaddr 127.0.0.1 \
  --rpccorsdomain '*' \
  --rpcapi 'eth,net,web3' \
  --unlock '0' \
  --password '$PASSWORD_FILE'"

alias attach="leth attach $DATADIR/geth.ipc"
alias mine="leth --mine"

alias reset="leth removedb && leth init genesis.json"
