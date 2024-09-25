#!/bin/bash

if [[$1 = "--help"] || [$1 = "-h"]]; then
	echo "./randMac.sh [network device/-h]"
else
	ifconfig $1
	ifconfig $1 down
	sudo macchanger -r $1
	ifconfig $1 up
	ifconfig $1
fi
