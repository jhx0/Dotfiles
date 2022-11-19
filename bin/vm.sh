#!/bin/bash

if [[ "$1" == "start" ]]; then
	sudo virsh start debian-1
	sudo virsh start archlinux-1
	sudo virsh start freebsd-1
	sudo virsh start openbsd-1
fi

if [[ "$1" == "stop" ]]; then
	if [[ -z "${PASSWORD}" ]]; then
		echo "No password given, aborting"
		exit 1
	fi


	sshpass -p $PASSWORD ssh deb-1 "sudo poweroff"
	sshpass -p $PASSWORD ssh arch-1 "sudo poweroff"
	sshpass -p $PASSWORD ssh obsd-1 "doas halt -p"
	sshpass -p $PASSWORD ssh fbsd-1 "sudo poweroff"
fi
