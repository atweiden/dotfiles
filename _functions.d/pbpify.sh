#!/bin/bash

# -----------------------------------------------------------------------------
# PBPify: encrypt/decrypt file contents with PBP
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# encrypt

function pbpify() {
echo -n 'Enter your passphrase: '; read -s PASSPHRASE
local file; for file in `find "$@" -type f`; do expect <<EOF
  spawn pbp --armor --encrypt -i ${file} -o ${file}.pbp
  expect "*Passphrase*" {
    send "$PASSPHRASE\r"
  }
  expect "*Repeat*" {
    send "$PASSPHRASE\r"
  }
  expect eof
EOF
done
echo 'The following files were encrypted:'; find . -type f -name "*.pbp" -exec echo '{}' \;
}


# -----------------------------------------------------------------------------
# decrypt

function unpbpify() {
echo -n 'Enter your passphrase: '; read -s PASSPHRASE
local file; for file in `find "$@" -type f -name "*.pbp"`; do expect <<EOF
  spawn pbp --decrypt -i ${file} -o ${file%.pbp}
  expect "Passphrase*" {
    send "$PASSPHRASE\r"
  }
  expect eof
EOF
done
echo 'Now decrypted:'; find . -type f -name "*.pbp" -exec echo '{}' \;
}
