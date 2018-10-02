#!/bin/bash
# This script is an example for variables in scripts

mytitle="Mister"
myname="Daniel Stevenson"
hostname=$(hostname)
today=$(date +%A)

titles=("All" "I" "Do" "Is" "Win")
title_index=$((RANDOM % ${#titles[@]}))
title=${titles[$title_index]}
welcome_message="Welcome to planet $hostname, $title $myname!
Today is $today."

echo "Welcome to planet $hostname, $mytitle $myname!"
echo "Today is $today."

echo $title
echo $welcome_message | cowsay -f dragon
