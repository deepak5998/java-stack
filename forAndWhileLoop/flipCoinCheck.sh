#!/bin/bash

valid=true;
count=0;
flag=0;
while [ $valid ]
read -p "Flip" n
do
	case $n in
		0)
			echo "Head";
			count=$(($count+1));
			if [ $count -eq 11 ]
			then
				break
			fi;;
		1)
			echo "Tails";
			flag=$(($flag+1))
			if [ $flag -eq 11 ]
			then 
				break
			fi;;
	esac 
done
