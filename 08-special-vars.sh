#!/bin/bash
echo "All variables: $@"
echo "Number of values passed: $#"
echo "Script name used: $0"
echo "Current working directory: $PWD"
echo "Home dir of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of current shell script: $$"
sleep 30 &
echo "Process ID of last background command: $!"

all_var=$@
count=$#
script_name=$0

echo "all_var: $all_var"
echo "count: $count"
echo "script_name: $script_name"