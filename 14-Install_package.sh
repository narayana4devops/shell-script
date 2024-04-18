#!/bin/bash

#user variables
user_id=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
log_file=/tmp/$script_name-$timestamp.log

# For Debug purpose
echo "time: $timestamp"
echo "script_name: $script_name"

# Variables for colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user_id -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

# User functions
validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCESS $N"
    fi
}


for i in $@
do
    dnf list installed $i &>> $log_file
    if [ $? -ne 0 ]
    then
        echo -e "$i Already Installed...$Y SKIPPING $N"       
    else
        dnf install $i -y &>> $log_file
        validate $? "Installation of $i is"
    fi
done