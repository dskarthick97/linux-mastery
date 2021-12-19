#!/bin/bash

date >> performance.log

ping -c 1 www.google.com &> /dev/null

if [ "$?" -eq 0 ]; then
	echo "Internet: Connected" >> performance.log
else
	echo "Internet: Disconnected" >> performance.log
fi

# Checking the memory usage
echo "RAM Usages: " >> performance.log
free -h | grep "Mem" >> performance.log

echo "Swap Usages: " >> performance.log
free -h | grep "Swap" >> performance.log

# Checking disk usage
echo "Disk Usages: " >> performance.log
df -h >> performance.log

echo ""
