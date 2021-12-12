#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Exactly one argument needed"
	exit 0
elif [[ $1 == "boot" ]]; then
	now=$(date)
	echo "$now $HOSTNAME booted!" >> /home/nallyl/lab5/boot.log
	exit 0
elif [[ $1 == "shutdown" ]]; then
	now=$(date)
	echo "$now $HOSTNAME shutdown!" >> /home/nallyl/lab5/boot.log
	exit 0
fi
	echo "Incorrect argument supplied. Usage: bootlog.sh [boot|shutdown]"
	exit 0
