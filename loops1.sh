#!/bin/bash

Userid=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"

CHECK_ROOT(){

     if [ $Userid -ne 0 ]
     then
       echo -e " $R Please run the script with root previlages"   
       exit 1  
     fi
    }



VALIDATE(){
 if [ $1 -ne 0 ]
 then
   echo -e "$2 $R is failed"
 else 
   echo -e "$2 $G is success" 
 fi
}
CHECK_ROOT

for package in $@
do
 dnf list installed $package
 if [ $? -ne 0 ]
 then 
  echo -e "$R $package is not installed.. $G going to install"
  dnf install $package -y 
  VALIDATE $? "Installing $package"
 else
  echo -e "$G $package is already installed $Y nothing to do"
 fi  
done
