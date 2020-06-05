#!/bin/bash -x

for i in {1..50}
do
  month=$(( $(( RANDOM%12 )) +1 ))
  year[month]+=" $i "
done

for i in {1..12}
do
  echo "beings birthday in month $i is " ${year[$i]}
done


