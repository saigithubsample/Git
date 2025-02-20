#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ]
then
 echo "plaes try to access with root prevelages"
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