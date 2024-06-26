#!/bin/bash

user_id=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
log_file=/tmp/$script_name-$timestamp.log


echo "time: $timestamp"
echo "script_name: $script_name"

if [ $user_id -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

validate(){
    if [ $1 -ne 0 ]
    then
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCESS"
    fi
}

dnf install mysql -y &>> $log_file
validate $? "Installation of mysql is"

dnf install git -y &>> $log_file
validate $? "Installation of git is"

dnf install dockerr -y &>> $log_file
validate $? "Installing of Docker is"