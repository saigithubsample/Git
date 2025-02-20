#!/bin/bash

Number1=$1
Number2=$2


sum=$(($Number1+$Number2))

if [ $sum -gt 100 ]

   then
   echo "the sum is $sum"
   echo " $sum is greather than 100"

   else
    echo "the sum is $sum"
   echo "$sum is lessthen 100"

fi