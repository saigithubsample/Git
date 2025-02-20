#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ] 
then
echo "run the script with root user access"

fi

dnf intall mysql