#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-dir

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo "$G SOURCE_DIRECTORY exists $N"
else
    echo "$R SOURCE_DIRECTORY not exist $N"
fi