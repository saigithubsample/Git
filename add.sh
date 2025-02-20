#!/bin/bash

Number1=$1
Number2=$2


sum=$(($Number1+$Number2))

if [ $sum -gt 100 ]

   then
   echo " sum is greather than 100"

   else

   echo "sum is lessthen 100"

fi