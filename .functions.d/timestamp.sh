#!/bin/bash

# -----------------------------------------------------------------------------
# Timestamp: derive an Electrum wallet from any given file for timestamping
#
# Protect your digital assets against unauthorized modification or
# malicious distribution using the Bitcoin blockchain itself
#
# Improves upon trusting checksums and PGP signatures attained over
# HTTP(S) for increased end-user security
# -----------------------------------------------------------------------------

timestamp() {
echo -n 'Enter the path to your file for timestamping: '; read BASEFILE
CHECKSUMWALLET="${BASEFILE}-electrum.dat"
SEED=$(sha256sum $BASEFILE | cut -c -64 | sha256sum | cut -c -64)
expect <<EOF
  spawn electrum -w $CHECKSUMWALLET restore -o -C
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
MNEMONIC=$(electrum -w $CHECKSUMWALLET getseed -o | jq -M '.mnemonic')
ADDRESSTOCHECK=$(electrum -w $CHECKSUMWALLET listaddresses -o | jq -M .[0])
electrum -w $CHECKSUMWALLET getaddresshistory $ADDRESSTOCHECK
# if history exists, file has been previously timestamped
# if history does not exist, file hasn't been timestamped
echo "Your base file: $BASEFILE"
echo "Your resulting timestamp Electrum wallet mnemonic: $MNEMONIC"
}
