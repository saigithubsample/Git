#!/bin/bash

Userid=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[33m"

VALIDATE(){
if [ $? -ne 0 ]
then
 echo "$2 is failed"
else 
 echo "$2 is success"
fi
}

if [ $Userid -ne 0 ]
then
 echo  -e "please try to access with $R root prevelages "
 exit 1
fi

 dnf list installed git -y
 VALIDATE $? "listing git" 

#  if [ $? -ne 0 ]
#  then 
#   echo "git is not installed ..going to intall"
#   dnf install git -y 
#    if [ $? -ne 0 ]
#    then 
#     echo  -e "GIT is not intalled $R try again"
#     exit 1
#    else
#     echo -e  "$G git installation is  success"
#    fi 

#  else 
#   echo -e "$G git is already installed nothing to do it"
#  fi  

#  dnf list installed mysq -y

#  if [ $? -ne 0 ]
#  then 
#   echo -e "mysql is $R not installed .. $G going to intall"
#    dnf install mysql -y 
#   if [ $? -ne 0 ]
#   then 
#    echo  -e "mysql is not intalled $R try again"
#    exit 1
#   else
#    echo -e  "$G mysql installation is  success"
#   fi 

#  else 
#   echo -e "mysql is $G already installed ....$N nothing to do it"
#  fi 