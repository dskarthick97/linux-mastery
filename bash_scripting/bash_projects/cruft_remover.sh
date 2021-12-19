#!/bin/bash

# Author	         : Karthick Sabari D S
# Created Date	     : 15-08-2021
# Last Modified Date : 15-08-2021

# Description: 
# Script clears the unnecessary files by deleting files that haven't been 
# modified for a certain period of time.

read -r -p "Which folder has to be cleaned?: " folder

if [ ! -d "$folder" ]; then
	echo "$folder doesn't exists"
	exit 1
else
	readarray -t unnecessary_files < <(find "$folder" -type f -mtime 24)
	for file in "${unnecessary_files[@]}"; do
		rm -i "$file"
		echo "$file deleted"
	done
fi

exit 0
