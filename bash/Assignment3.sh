#!/bin/bash
#this program asks for bash commands then provides the source software package

while [ $# -gt 0 ]; do
  case "$1" in
    -h|--help)
      echo "When prompted by the program input up to 5 commands separated by spaces, The program will then tell you which software package it came from."
      exit 0
      ;;
    *)
      echo "I didn't understand '$1'"
      exit 1
      ;;
  esac
  shift
done

read -p "Enter up to 5 command names (commands must be separated by spaces):" com1 com2 com3 com4 com5
comarray=($com1 $com2 $com3 $com4 $com5)

if [ -z $com1 ]; then
  echo "Enter at least one command name"
fi

for element in "${comarray[@]}"; do
  dpkg -S $element || echo "I could not find that command."
done
