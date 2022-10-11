#!/bin/sh

set -e

DEVICE="/dev/XXX"
PASS=$(tr -cd '[:alnum:]' < /dev/urandom | head -c128)

openssl enc -aes-256-ctr -pass pass:"$PASS" -nosalt </dev/zero | dd obs=64K ibs=4K of=$DEVICE oflag=direct status=progress
