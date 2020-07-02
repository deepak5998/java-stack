#!/bin/bash 

arr=(1 2 0 -1 -3)
n=5; #length
for (( i=0; i<=$n-2; i++ ))
do
	for (( j=$i+1; j<=$n-1; j++ ))
	do
		for ((k=$j+1; k<n; k++ ))
		do
			if [ $((${arr[$i]}+${arr[$j]}+${arr[$k]})) == 0 ]
			then
				echo "Exist"
				echo ${arr[$i]}, ${arr[$j]}, ${arr[$k]}
			else
				echo "Not Exist"
			fi
		done
	done
done
