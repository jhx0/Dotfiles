#!/bin/sh

GO_VER='go1.20.6.linux-amd64.tar.gz'
GO_BIN="https://go.dev/dl/${GO_VER}"

cd $HOME/bin

echo "[INFO] Downloading Go binaries..."
wget -q --show-progress $GO_BIN

echo "[INFO] Unpacking Go"
tar xzf go*.tar.gz

echo "[INFO] Cleanup"
rm -f $GO_VER

echo "[OK] Done!"
