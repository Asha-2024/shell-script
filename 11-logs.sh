#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%m-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
  if [ $? -ne 0 ]
    then 
        echo "ERROR:: $2... failed"
        exit 1
    else
        echo "$2... SUCCESS"
    fi 
}

if [ $ID -ne 0 ] 
then
    echo"ERROR: : Please run this script with root access"
    exit 1 # you can give other than 0
    else
        echo "You are root user"
    fi # fi means reverse of if, indicating conditi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MYSQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"

