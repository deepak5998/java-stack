#!/bin/bash 

read -p "Enter the number: " n
for (( i=1; i<=$n/2; i++))
do
rem=$(($n%$i))
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
