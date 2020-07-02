#!/bin/bash

read -p "Enter the number: " n
num=$(echo |awk '{ print n/2}' n=$n)
for (( i=1; i<=$num; i++))
do
rem=$(echo |awk '{print n%i}' n=$n i=$i)
	if [ $rem -eq 0 ]
	then
		flag=1;
	else
		flag=0;
	fi
done
if [ $flag -eq 1 ]
then
	echo "$n is Not Prime"
else
	echo "$n is Prime"
fi
