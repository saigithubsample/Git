#!/bin/bash

# Userid=$(id -u)

# if [ $Userid -ne 0 ] 
# then
# echo "run the script with root user access"

# fi

dnf list intalled mysql
if [ $? -ne 0 ]
  then
   echo "mysql is not installed..... going to install"

  else
    echo "mysql is already installed ..nothing to do"
fi