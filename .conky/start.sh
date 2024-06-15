#!/bin/bash

CONKYRC='conkyrc-linux'

sleep 4

conky -c $HOME/.conky/${CONKYRC} &>/dev/null &
