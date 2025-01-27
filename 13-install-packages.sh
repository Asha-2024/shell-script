#!/bin/bash  

ID=$(id -u)

if [ $ID -ne 0 ] 
then
    echo"$R ERROR: : Please run this script with root access $N"
    exit 1 # you can give other than 0
    else
        echo "You are root user"
    fi # fi means reverse of if, indicating conditi

    echo "All arguments passed: $@"