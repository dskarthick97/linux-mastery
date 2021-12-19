#!/bin/bash

while read line; do
	if [ $line -f ]; then
		touch "$line"
	else
		mkdir "$line"
	fi
done < "$1"

echo "Folder structure created!"
