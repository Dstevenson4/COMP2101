#!/bin/bash
# This script is an example for variables in scripts

mytitle="Mister"
myname="Daniel Stevenson"
hostname=$(hostname)
today=$(date +%A)


echo "Welcome to planet $hostname, $mytitle $myname!"
echo "Today is $today."
