#!/bin/bash 
if [[ "$1" = "-h" ]] || [[ "$#" -eq 0 ]] || [[ "$1" = "--help" ]]; then
  echo "Usage: chop_me <string> <index>"
  echo "this Chops script the given string at the specified index, then prints the result."
  exit 0
fi

if [[ "$#" -lt 2 ]]; then
  echo "Usage: chop <string> <index>" >&2
  exit 1
fi
# start from index n and chop m charact
string="$1"
index="$2"


# Check if the string is empty or if the index is out of range
if [[ -z "$string" ]] || [[ "$index" -lt 0 ]] || [[ "$index" -ge "${#string}" ]]; then
  echo "Error: you must be input appropriate string and index " >&2
  exit 1
fi

# Perform the chop
chopped="${string:0:index}"
# echo result
echo "$chopped"

#set input and the output of function
funcChop()
{
    string="$1"
    index="$2"
    chopped="${string:0:index}"
    echo "$chopped"
}

