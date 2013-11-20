#!/bin/bash

# -----------------------------------------------------------------------------
# LAFSify: derive an Electrum wallet from any given Tahoe-LAFS writecap
# -----------------------------------------------------------------------------

function lafsify() {
echo -n 'Enter your Tahoe-LAFS writecap: '; read WRITECAP
SEED=$(hURL -s --no-color --HEX $WRITECAP)
expect <<EOF
  spawn electrum -w electrum-lafs.dat restore -o -C
  expect "Password*" {
    send "\r"
  }
  expect "fee*" {
    send "\r"
  }
  expect "gap*" {
    send "\r"
  }
  expect "seed*" {
    send "$SEED\r"
  }
  expect eof
EOF
MNEMONIC=$(electrum -w electrum-lafs.dat getseed -o | jq -M '.mnemonic')
echo "Your Tahoe-LAFS writecap: $WRITECAP"
echo "Your resulting Electrum wallet seed: $SEED"
echo "Your resulting Electrum wallet mnemonic: $MNEMONIC"
}

function unlafsify() {
echo -n 'Enter your Electrum-LAFS mnemonic: '; read MNEMONIC
expect <<EOF
  spawn electrum -w electrum-lafs.dat restore -o -C
  expect "Password*" {
    send "\r"
  }
  expect "fee*" {
    send "\r"
  }
  expect "gap*" {
    send "\r"
  }
  expect "seed*" {
    send "$MNEMONIC\r"
  }
  expect eof
EOF
SEED=$(electrum -w electrum-lafs.dat getseed -o | jq -M '.seed')
WRITECAP=$(hURL -s --no-color --hex $SEED)
echo "Your starting Electrum wallet mnemonic: $MNEMONIC"
echo "Your starting Electrum wallet seed: $SEED"
echo "Your resulting Tahoe-LAFS writecap: $WRITECAP"
}
