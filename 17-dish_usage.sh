#!/bin/bash

disk_usage=$(df -hT | grep xfs)
disk_treshold=6

while IFS= read -r line
do

done <<< $disk_usage