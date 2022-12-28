#!/bin/sh

echo "[INFO] Downloading Rust related tools..."
curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
echo "[OK] Done!"
