#!/bin/bash

echo -n "Are you robot?,y or n.\n"
read ANSWER
[ $ANSWER = "Y" -o $ANSWER = "y" ] && echo "robot" || echo "human"

read -p "Are you human? y or n.\n"  ANSWER1
[ $ANSWER1 = "Y" -o $ANSWER1 = "y" ] && echo "human" || echo "robot"
