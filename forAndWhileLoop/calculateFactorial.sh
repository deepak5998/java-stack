#!/bin/bash

read -p "Enter the number: " n
factorial=1;
for (( i=1; i<=$n; i++))
do
	factorial=$(($i*$factorial))
if [ $i -eq 1 ]
then
	printf "$i"
else
	printf "*$i"
fi
done
printf "= $factorial"
