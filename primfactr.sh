#!/bin/bash -x

echo "enter number"
read input 
if [ $input -lt 1 ]; then
echo "not allowed"
exit 1
fi

count=0
flag=0
index=0

for ((i=2;i<$input;i++))
do
 flag=1
  if (( $(($input%$i))==0 ))
   then
	flag=0
  factor=$i
  for ((j=2;$j<$factor;j++))
   do
	if (( $(($factor%$j))==0 ));then
	flag=1
	break
	fi
  done

  if [ $flag == 0 ];then
	   primfactor[(index++)]=$factor
	   echo $factor

  count=1
  fi
  fi
done
  if [ $count == 0 ]; then
  echo "no prim factor found except 1 and $input"
  fi
echo "prime factors =" [ ${primfactor[@]} ]
