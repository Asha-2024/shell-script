#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%m-%S)
Rm"\e[31m"
Gm"\e[32m"
Nm"\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP"
VALIDATE(){
  if [ $? -ne 0 ]
    then 
        echo "ERROR:: $2... $R failed $N"
        exit 1
    else
        echo "$2... $G SUCCESS $N"
    fi 
}

if [ $ID -ne 0 ] 
then
    echo"$R ERROR: : Please run this script with root access $N"
    exit 1 # you can give other than 0
    else
        echo "You are root user"
    fi # fi means reverse of if, indicating conditi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MYSQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"

