#!/bin/bash https://github.com/su2700/bash.git
if [ "$#" -lt 2 ]; then
  echo "Usage: chop <string> <index>" >&2
  exit 1
fi
# start from index n and chop m charact
string="$1"
index="$2"


# Check if the string is empty or if the index is out of range
if [ -z "$string" ] || [ "$index" -lt 0 ] || [ "$index" -ge "${#string}" ]; then
  echo "Error: you must be input appropriate string and index " >&2
  exit 1
fi

# Perform the chop
chopped="${string:0:index}"
# echo result
echo "$chopped"

