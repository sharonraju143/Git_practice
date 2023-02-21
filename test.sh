#!/bin/bash
read a
read b

if sum=`expr $a + $b`;
then
echo "Sum is : $sum"
else
echo "Enter an integer not a Non-integer"
fi 