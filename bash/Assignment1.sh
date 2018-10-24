#!/bin/bash
#This script will meet the requirements for question number 1 of the bash
#assignment
count=2
sides=6
while [ $# -gt 0 ]; do
  case "$1" in
    -h|--help)
      echo "Usage $0 [-h|--help] [-c N|--count N] [-s N|--sides N]"
      exit 0
      ;;
    -c|--count)
      count="$2"
      shift
      if [ -z "$count" ]; then
        echo "you must provide a number between 1 and 9 after the -c|--count telling the program how many dice you want to roll." >&2
        exit 2
      fi
      if [ "$count" -lt 1 ]; then
        echo "The count must be a number between 1 and 9." >&2
        exit 2
      fi
      if [ "$count" -gt 9 ]; then
        echo "The count must be a number between 1 and 9." >&2
        exit 2
      fi
      ;;
    -s|--sides)
      sides="$2"
      shift
      if [ -z "$sides" ]; then
        echo "you must provide a number between 4 and 20 after the -s|--sides telling the program how many sides the dice should have." >&2
        exit 3
      fi
      if [ "$sides" -lt 4 ]; then
        echo "The number of sides must be between 4 and 20." >&2
        exit 3
      fi
      if [ "$sides" -gt 20 ]; then
        echo "The number of sides must be between 4 and 20." >&2
        exit 3
      fi
      ;;
    *)
      echo "I didn't understand '$1'" >&2
      exit 1
      ;;
  esac
  shift
done


sum=0
while [ $count -gt 0 ]; do
    roll=$(( $RANDOM % $sides +1 ))
    sum=$(( $sum + $roll ))
    echo "Rolled $roll"
    count=$((count - 1))
done
echo "You rolled a total of $sum"
