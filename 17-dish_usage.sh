#!/bin/bash

disk_usage=$(df -hT | grep xfs)
disk_treshold=10
message=""

while IFS= read -r line
do
    
    usage=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    #echo $usage
    folder=$(echo $line | awk -F " " '{print $NF}')
    #echo $folder
    if [ $usage -ge $disk_treshold ]
    then
        #echo "$folder is more than $disk_treshold, current usage is : $usage"
        message+="$folder is more than $disk_treshold, current usage is : $usage \n"
    fi
done <<< $disk_usage

echo "final message: $message"