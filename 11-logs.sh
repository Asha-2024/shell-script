#!/bin/bash

ID=$(id -u)

echo "script name: $0"

VALIDATE(){
  if [ $? -ne 0 ]
    then 
        echo "ERROR:: Installing mySQL is failed"
        exit 1
    else
        echo "Installing  is SUCCESS"
    fi 
}

if [ $ID -ne 0 ] 
then
    echo"ERROR: : Please run this script with root access"
    exit 1 # you can give other than 0
    else
        echo "You are root user"
    fi # fi means reverse of if, indicating conditi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE $? "Installing GIT"

