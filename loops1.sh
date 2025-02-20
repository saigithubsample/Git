#!/bin/bash

Userid=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"

CHECK_ROOT(){
if [ $Userid -ne 0 ]
then
 echo "Please run the script with root previlages"   
 exit 1  
}
fi

VALIDATE(){
if [ $? -ne 0 ]
then
 echo "command is failed"
else 
 echo "command is success" 
fi
}

dnf list installed git -y

VALIDATE $? "listing git"
