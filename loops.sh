#!/bin/bash

Userid=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[33m"

CHECK_ROOT(){
if [ $Userid -ne 0 ]
then
 echo "try to access with root prevelages"
 exit 1
fi
}

VALIDATE(){
 if [ $? -ne 0 ]
 then 
  echo "$2 is failed"
  exit 1
 else 
  echo "$2 is success"
 fi 
}

CHECK_ROOT

for package in $@
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
     echo "$package is not installed .. going to install it"
     VALIDATE $? "installing git"
    else
     echo "$package is already installed"
    fi
done