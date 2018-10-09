#!/bin/bash
# Shifting with command line

while [ $# -gt 0 ]; do
  case "$1" in
    -h|--help)
      echo "Usage: $0 [-h|--help] [-d N|--debug N]"
      exit 0
      ;;
    -d|--debug)
      debug="$2"
      shift
      if [ -z "$debug" ]; then
        echo "You have to give me a debug number if you use the debug option" >&2
        echo "Usage: $0 [-h|--help] [-d N|--debug N]"
        exit 2
      fi
      ;;
    *)
      echo "I didn't understand '$1'" >&2
      exit 1
      ;;
  esac
  shift
done


echo "Done processing command line."
