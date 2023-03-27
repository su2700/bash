#!/bin/bash 

#set input and the output of function
funcChop()
{
    string="$1"
    index="$2"
    chopped="${string:0:index}"
    echo "$chopped"
}

#call function
chopResult=$(funcChop helloWorld 3)

echo "$chopResult"