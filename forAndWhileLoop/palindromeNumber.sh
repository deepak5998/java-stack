#!/bin/bash 

read -p "Enter the number: " n
rev=0
temp=$n

while [ $n -ne 0 ]
do
	r=$(($n%10))
	rev=$(((($rev*10))+$r))
	n=$(($n/10))
done
echo "Reverse of the number: $rev"


if [ $temp -eq $rev ]
then
	echo "$temp is Palindrome"
else
	echo "$temp is NOT Palindrome"
fi
