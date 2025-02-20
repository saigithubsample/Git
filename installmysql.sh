#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ] 
then
echo "run the script with root user access"

exit 1

fi

dnf list intalled mysql
if [ $? -ne 0 ]
  then
   echo "mysql is not installed..... going to install"
   dnf install mysql -y
   if [ $? -ne 0 ]
     then 
      echo "installation of my sql not success"
      exit 1
     else
      echo "installation of my sql is success"  
    fi 

  else
    echo "mysql is already installed ..nothing to do"
fi