#!/bin/bash

if [[ "$1" == "start" ]]; then
	sudo virsh start debian-1
	sudo virsh start freebsd-ports-1
	sudo virsh start openbsd-1
	sudo virsh start winsrv-1
fi

if [[ "$1" == "stop" ]]; then
	echo "DEBUG: $PASSWORD"
	if [[ -z "${PASSWORD}" ]]; then
		echo "No password given, aborting"
		exit 1
	fi

	sshpass -p $PASSWORD ssh v-debian-1 sudo poweroff
	sshpass -p $PASSWORD ssh v-openbsd-1 doas halt -p
	sshpass -p $PASSWORD ssh v-freebsd-ports-1 sudo poweroff
fi
