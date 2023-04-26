#!/bin/bash

# what is basename: basename used to extract the filename or directory name from path
# I feel basename is useless:)

for localFileList in *; do
    echo "$(basename "$localFileList")" 
    echo " "
done



for localFileList in *; do
    echo "$localFileList"
done