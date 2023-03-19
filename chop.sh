#!/bin/bash https://github.com/su2700/bash.git
if [ "$#" lt 2 ] ; then
    echo "Usage: `chop me <sting> <index>"
    exit 1
fi

if [ "$1" == "-h" ] ; then
    echo "Usage: `basename $0` [-h]"
    exit 0
fi

# ${stringA:n:m}  means chop from stringA 
# start from index n and chop m charact
# assign arg to var
stringA="$1"
index="$2"
# do the chop
chopped="${stringA:0:index}"
# echo result
echo "$chopped"



