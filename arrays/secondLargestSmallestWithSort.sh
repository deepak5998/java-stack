#!/bin/bash

length=10
count=1

while [ $count -le $length ];
do
	num[$count]=${RANDOM:0:3}
	count=$(($count+1))
done
echo ${num[@]}

b=($(for el in ${num[@]}; do echo $el; done | sort))
echo "Sorted Array: ${b[@]}"
echo ${b[1]} ${b[8]}
