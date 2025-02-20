#!/bin/bash

Userid=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[33m"

if [ $Userid -ne 0 ]
then
 echo  -e "plaes try to access with $R root prevelages "
 exit 1
fi

dnf list installed git -y

 if [ $? -ne 0 ]
 then 
  echo "git is not installed ..going to intall"
  dnf install git -y 

 else 
  echo "$G git is already installed nothing to do it"
 fi  

 dnf list installed mysq -y

 if [ $? -ne 0 ]
 then 
  echo -e "mysql is $R not installed .. $Ggoing to intall"
  dnf install mysql -y 
  if [ $? -ne 0 ]
  then 
  echo "mysql is not intalled $R try again"
  else
   echo "mysql installation is $G success"
  fi 

 else 
  echo "mysql is $Galready installed ....$N nothing to do it"
 fi 