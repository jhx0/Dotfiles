#!/bin/bash

NUM=`shuf -i 1-$(wc -l <  ~/.local/bin/kjv.txt) -n 1`; sed -n "${NUM}p" ~/.local/bin/kjv.txt
