#!/bin/bash

read -p "Enter first limit: " x
read -p "Enter last limit: " y
for (( i=$x; i<=$y; i++ ))
do
count=0;
	for (( j=2; j<=$i/2; j++))
	do
	rem=$(($i%$j))
		if [ $rem -eq 0 ]
		then
			count=$(($count+1))
		fi
	done
if [ $count -eq 0 ]
then
	echo "$i is Prime"
fi
done
printf "\n"
