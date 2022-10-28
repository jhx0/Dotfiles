#!/usr/bin/env bash

shuf -n 10 /usr/share/dict/words | grep -v "'" | tr '\n' ' '; echo
