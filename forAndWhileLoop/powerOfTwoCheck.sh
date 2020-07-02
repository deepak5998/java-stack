#!/bin/bash

read -p "Enter the number: " n
valid=true;
while [ $valid ]
do
	for (( i=1; i<=$n; i++ ))
	do
	res=$(echo |awk '{ print 2^i }' i=$i)
	echo "2^$i=$res"
	if [ $res -eq 256 ]
	then
		flag=1
		break
	fi
	done
	printf "\n"
if [ $flag -eq 1 ]
then
	break
fi
done
