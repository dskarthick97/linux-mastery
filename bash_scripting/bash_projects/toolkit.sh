#!/bin/bash

# Author	         : Karthick Sabari D S
# Created Date	     : 15-08-2021
# Last Modified Date : 15-08-2021

# Description :
# Presents an interactive menu that user can select to run the utility scripts

echo "Which script to run? "
select script in "cruft_remover" "folder_organiser"; do
    "$HOME/karthick.dhilip/dev/learning/linux/bash_scripting/bash_projects/$script.sh"
    break
done

exit 0
