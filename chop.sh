#!/bin/bash 


#set input and the output of function
_funcChop()
{
    string="$1"
    index="$2"
    chopped="${string:0:index}"
    echo "${chopped}"
}


if  [[ "$1" = "-h" ]] || [[ "$#" -eq 0 ]] || [[ "$1" = "--help" ]]; then
  echo "this Chops script the given string at the specified index, then prints the result. Usage: chop_me <string> <index>"
  exit 1
fi

# start from index n and chop m charact
string="$1"
index="$2"


# Check if the string is empty or if the index is out of range
if [[ "$#" -lt 2 ]]||[[ -z "$string" ]] || [[ "$index" -lt 0 ]] || [[ "$index" -ge "${#string}" ]]; then
  echo "Error: you must be input appropriate string and index " >&2
  exit 2
fi

#call function
chopResult=$(_funcChop "$1" "$2")

echo "${chopResult}"

exit 0