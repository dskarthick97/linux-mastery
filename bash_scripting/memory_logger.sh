#!/bin/bash

if [ -d "$HOME/karthick.dhilip/dev/learning/linux/bash_scripting/performance"  ]; then
	echo "Folder exists"
else
	mkdir "$HOME/karthick.dhilip/dev/learning/linux/bash_scripting/performance"
fi

free >> "$HOME/karthick.dhilip/dev/learning/linux/bash_scripting/performance/memory.log"
