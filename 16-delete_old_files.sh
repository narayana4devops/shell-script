#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-dir/

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G SOURCE_DIRECTORY exists $N"
else
    echo -e "$R SOURCE_DIRECTORY not exist $N"
    exit 1
fi

Files=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do
    echo "Deleting file: $line"
    #rm -rf $line
done <<< $Files