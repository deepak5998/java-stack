#!/bin/bash

read -p "Enter the number: " n
for (( i=1; i<=$n; i++))
do
res=$(echo| awk '{ print res += 1/i}' i=$i res=$res)
if [ $i -eq 1 ]
then
	printf "1/$i"
else
	printf "+ 1/$i"
fi
done
printf "=$res"
