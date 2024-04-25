#!/bin/bash

disk_usage=$(df -hT | grep xfs)
disk_treshold=6

while IFS= read -r line
do
    
    usage=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    echo $usage
    folder=$(echo $line | awk -F " " '{print $NF}')
    echo $folder
done <<< $disk_usage