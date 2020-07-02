#!/bin/bash

read -p "Enter the number: " n
for (( i=1; i<=$n; i++ ))
do
res=$(echo |awk '{ print 2^i }' i=$i)
echo "2^$i=$res"
done
printf "\n"
