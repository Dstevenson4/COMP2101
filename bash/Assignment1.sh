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
      if [ "$2" -gt 0 ] && [ "$2" -lt 10 ]; then
        count="$2"
        shift
      else
        echo "The count needs to be a number between 1 and 9." >&2
        exit 1
      fi
      ;;
    -s|--sides)
      if [ "$2" -gt 3 ] && [ "$2" -lt 21 ]; then
        sides="$2"
        shift
      else
        echo "The sides needs to be a number between 4 and 20." >&2
        exit 2
      fi
      ;;
    *)
      echo "I didn't understand '$1'" >&2
      exit 3
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
