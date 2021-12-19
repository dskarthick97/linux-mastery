#!/bin/bash

# Author	         : Karthick Sabari D S
# Created Date	     : 15-08-2021
# Last Modified Date : 15-08-2021

# Description: 
# Organize the files within a given folder with different subfolders based 
# on their file types.

read -r -p "Which folder do you want to organize?: " path

while read line; do
	case "$line" in
		*.jpg|*.jpeg|*.png) subfolder="images";;
		*.doc|*.docx|*.txt|*.pdf) subfolder="documents";;
		*.xls|*.xlsx|*.csv) subfolder="spreadsheets";;
		*.sh) subfolder="scripts";;
		*.zip|*.tar|*.tar.gz|*.tar.bz2) subfolder="archives";;
		*.ppt|*.pptx) subfolder="presentations";;
		*.mp3) subfolder="audio";;
		*.mp4) subfolder="video";;
		\?) subfolder=".";;
	esac

	if [ ! -d "$path/$subfolder" ]; then
		mkdir "$path/$subfolder"
	fi

	mv "$line" "$path/$subfolder"
done < <(ls "$path")

exit 0
