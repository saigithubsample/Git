#!/bin/bash

Userid=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[33m"

if [ $Userid -ne 0 ]
then
 echo  -e "plaes try to access with  root prevelages $R"
 exit 1
fi

dnf list installed git -y
 if [ $? -ne 0 ]
 then 
  echo "git is not installed ..going to intall"
  dnf install git -y 

 else 
  echo "git is already installed nothing to do it"
 fi  