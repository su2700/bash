#!/bin/bash

NAME=n0ah ; id $NAME &> /dev/null && echo "$NAME is exist" || echo "$NAME is not exist"