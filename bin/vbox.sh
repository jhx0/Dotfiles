#!/bin/bash

VBMGR="/bin/VBoxManage"

vm_list=(
	"OpenBSD-1"
	"FreeBSD-1"
	"Windows-Server-1"
)

echo "[INFO] Starting VM's..."

for vm in "${vm_list[@]}"; do
	$VBMGR startvm $vm
done

echo "[INFO] Done!"
