#!/bin/sh

mkdir -p /wallets/iota/exports
cat /dev/random |tr -dc A-Z9|head -c${1:-81} > /wallets/iota/iota_seed.txt

WALLET=iota INPUT_FILE=iota_seed.txt /encrypt.sh
WALLET=iota INPUT_FILE=iota_seed.txt.enc /encode.sh

tar -zcvf /exports/iota_wallet.tar.gz -C /wallets/iota/exports .