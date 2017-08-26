#!/bin/sh
openssl enc -aes-256-cbc -salt -a -in /wallets/$WALLET/$INPUT_FILE -out /wallets/$WALLET/exports/$INPUT_FILE.enc