#!/bin/sh

vm-directory=$1;
target-dir="$vm-directory/shop-be"

bash scripts/quality-check.sh
bash scripts/build-client.sh --configuration=production

ssh ubuntu-sshuser
scp -Cr "/dist" package.json ubuntu-sshuser:$target-dir
