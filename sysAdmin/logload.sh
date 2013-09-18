#!/bin/bash

while true
do
	load=$(uptime | perl  -ple 's/.*load average: (\d+\.\d+),.+/\1/g')
	time=$(date +%Y%m%d-%H%M%S)
	echo "$time	$load" |tee -a $1
	sleep 60
done
