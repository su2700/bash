#!/bin/bash


_funcChop()
{
    local string="$1"
    local index="$2"

if [[ -z "${string}" ]] || [[ "${index}" -lt 0 ]] || [[ "${index}" -ge "${#string}" ]]; then
  echo "false: you must be input appropriate string and index " >&2
  exit 1
fi
    chopped="${string:0:index}"
    echo "${chopped}"
}


# Check if the first argument is a string



# Call the funcation 
_funcChop plejdland 20