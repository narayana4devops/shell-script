#!/bin/bash

user_id=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)

echo "time: $timestamp"
echo "script_name: $script_name"
