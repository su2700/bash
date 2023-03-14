#!/bin/bash

# ${stringA:n:m}  means chop from stringA 
# start from index n and chop m charact
# assign arg to var
stringA="$1"
index="$2"
# do the chop
chopped="${stringA:0:index}"
# echo result
echo "$chopped"





