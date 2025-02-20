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
     fi
    }

CHECK_ROOT

VALIDATE(){
if [ $1 -ne 0 ]
then
 echo "$2 is failed"
else 
 echo "$2 is success" 
fi
}


for pacakage in $@
do
dnf list installed $package
if [ $? -ne 0 ]
then
  dnf install $package -y
  VALIDATE $? "INSTALLING $package"
else
 echo " $package is already installe dnothing to do"
fi
done
