#!/bin/bash
echo -n "Enter the first number : "
echo -n "Enter the second number : "
read a 
read b
sum=`expr $a + $b`
echo "sum is : $sum"
diff=`expr $a - $b`
echo "diff is : $diff"
mul=`expr $a \* $b`
echo "mul is : $mul"
div=`expr $a / $b`
echo "div is : $div"