#!/bin/bash


_funcChop()
{
     string="$1"
     index="$2"

if [[ -z "${string}" ]] || [[ "${index}" -lt 0 ]] || [[ "${index}" -ge "${#string}" ]]; then
  echo "false: you must be input appropriate string and index " >&2
  exit 1
fi
    chopped="${string:0:index}"
    echo "${chopped}"
}

# Call the funcation 
_funcChop plejdland 7
