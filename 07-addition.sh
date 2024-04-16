#!/bin/bash

# adding 2 number which we are taking fromm command line arguements

No1=$1
No2=$2


if [$# -eq 2]
then
    sum=$(($No1+$No2))
    echo "Addition of $No1 and $No2 is: $sum"
else
    echo "you must pass 2 arguments"
    exit 1
fi