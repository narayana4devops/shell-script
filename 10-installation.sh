#!/bin/bash
userID=$(id -u)

echo "userID: $userID"

if [ $userID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are root user"
fi

sudo dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql...FAILURE"
    exit 1
else
    echo "Installation of mysql...SUCESS"
fi

echo "is script proceeding?"