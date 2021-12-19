#!/bin/bash

read -p "What is your first name?: " first_name
read -p "What is your surname/family name?: " surname
read -p "What is your extension number? (must be 4 digit): " ext_number
read -n 4 -s -p "What access code would you like to use when dialing in? (must be 4 digit): " access_code
echo ""

echo "$first_name,$surname,$ext_number,$access_code" >> extensions.csv
