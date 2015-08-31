#!/bin/bash

# -----------------------------------------------------------------------------
# GPGify: encrypt/decrypt file contents with GnuPG v1.4.14
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# encrypt

gpgify() {
echo -n 'Enter your passphrase: '; read -s PASSPHRASE
local file; for file in `find "$@" -type f`; do expect <<EOF
  spawn gpg1 --armor --no-emit-version --cipher-algo TWOFISH --symmetric -o ${file}.gpg ${file}
  expect "*passphrase*" {
    send "$PASSPHRASE\r"
  }
  expect "*passphrase*" {
    send "$PASSPHRASE\r"
  }
  expect eof
EOF
done
echo 'The following files were encrypted:'; find . -type f -name "*.gpg" -exec echo '{}' \;
}


# -----------------------------------------------------------------------------
# decrypt

ungpgify() {
echo -n 'Enter your passphrase: '; read -s PASSPHRASE
local file; for file in `find "$@" -type f -name "*.gpg"`; do expect <<EOF
  spawn gpg1 -d ${file} -o ${file%.gpg}
  expect "*passphrase*" {
    send "$PASSPHRASE\r"
  }
  expect eof
EOF
done
echo 'Now decrypted:'; find . -type f -name "*.gpg" -exec echo '{}' \;
}
