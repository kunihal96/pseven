#!/bin/bash -x

declare -A dice
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

flag=0
while (( $flag != 1 ))
do
check=$((RANDOM%6+1))
case $check in
	      1) ((count1++))
		 dice[one]=$count1;;
	      2) ((count2++))
                 dice[two]=$count2;;
	      3) ((count3++))
                 dice[three]=$count3;;
	      4) ((count4++))
                 dice[four]=$count4;;
	      5) ((count5++))
                 dice[five]=$count5;;
	      6) ((count6++))
                 dice[six]=$count6;;
esac
if (( ($count1==10) || ($count2==10) || ($count3==10) || ($count4==10) || ($count5==10) || ($count6==10) )) 
then
     flag=1;
fi
done
max=0
min=10
for key in ${!dice[@]}
do
    echo $key : ${dice[key]}
    if ((${dice[$key]}>$max))
    then
        max=${dice[$key]}
	maxdice=$key
    fi

    if ((${dice[$key]}<$min))
    then
        min=${dice[$key]}
        mindice=$key
    fi
done
echo "max times : $maxdice"
echo "min times : $mindice"




