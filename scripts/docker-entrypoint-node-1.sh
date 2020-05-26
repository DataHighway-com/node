#!/bin/bash

# use 127.0.0.1 or testnet-harbour.datahighway.com
# bootnode node-1 is QmTci9Adif5gUXhgPUZk4bEd3U1E1Tvr1PwKBjDbL5UGn7 or
# sentry node id: QmRR5ipj6arL2rhfUsAUk9ndCQ6qYntjqDQSDD73mi2g7p

../target/release/datahighway --validator \
  --unsafe-ws-external \
  --unsafe-rpc-external \
  --rpc-cors=all \
  --base-path /tmp/polkadot-chains/node-1 \
  --bootnodes /dns4/testnet-harbour.datahighway.com/tcp/30333/p2p/QmRR5ipj6arL2rhfUsAUk9ndCQ6qYntjqDQSDD73mi2g7p \
  --keystore-path "/tmp/polkadot-chains/node-1/keys" \
  --chain ../src/chain-definition-custom/chain_def_testnet_v0.1.0.json \
  --name "Example Validator Node 1" \
  --port 30333 \
  --ws-port 9944 \
  --rpc-port 9933 \
  --telemetry-url ws://telemetry.polkadot.io:1024 \
  --execution=native \
  -lruntime=debug
