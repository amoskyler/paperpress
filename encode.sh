#!/bin/sh
cat /wallets/$WALLET/exports/$INPUT_FILE | qrencode -o /wallets/$WALLET/exports/$INPUT_FILE.png