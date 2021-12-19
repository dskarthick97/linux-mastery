#!/bin/bash

readarray -t files < files.txt

for element in "${files[@]}"; do
	if [ -f "$element" ]; then
		echo "$element already exixts"
	else
		touch "$element"
		echo "$element created!"
	fi
done
