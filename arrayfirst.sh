#!/bin/bash -x

count=0
max=10
size=0

while  (( $count < $max ))
do
    number[$count]=$(( RANDOM%899 +100 ))
	((count++))
done
echo ${number[@]}
size=${#number[@]}

max=${number[0]}
secmax=${number[0]}
min=${number[0]}
secmin=${number[0]}

for (( i=0; i<size; i++ ))
do
  if [ ${number[i]} -gt $max ]
  then 	
       secmax=$max
       max=${number[i]}

  elif [ ${number[i]} -gt $secmax ]
  then
      secmax=${number[i]}
  fi
done

for (( j=0; j<size; j++ ))
do
  if [ ${number[j]} -lt $min ]
  then
       secmin=$min
       min=${number[j]}

  elif [ ${number[j]} -lt $secmin ]
  then
      secmin=${number[j]}
  fi
done

echo "second max num :" $secmax
echo "second min num :" $secmin

