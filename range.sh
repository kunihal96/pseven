#!/bin/bash -x

count=0
for i in {1..100}
do
   if (( $(($i%11)) == 0 ))
     then 
   	number[(count++)]=$i
   fi
done
echo "numbers are :" ${number[@]}
