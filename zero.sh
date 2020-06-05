#!/bin/bash -x

count=0
number[(count++)]=5
number[(count++)]=-4
number[(count++)]=-1

echo "array :" ${number[@]}

sum=0
for i in ${number[@]}
do
    sum=`expr $sum + $i`
done

echo $sum
