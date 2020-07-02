#!/bin/bash 

for (( i=1; i<=100; i++ ))
do
	rem=$(($i%11))
	if [ $rem -eq 0 ]
	then
		arr[$i]=$i
	fi	
done
echo "Repeated digits from 0-100 are: ${arr[@]}";
