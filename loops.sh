#!/bin/bash

Userid=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[33m"

cHECK_ROOT(){
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
}

CHECK_ROOT

for package in $@
do

echo $package
done