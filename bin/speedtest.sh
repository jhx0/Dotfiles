#!/bin/bash

abort() {
	rm -f /tmp/1GB.bin
}

trap 'abort' SIGINT

wget https://speed.hetzner.de/1GB.bin -O /tmp/1GB.bin
