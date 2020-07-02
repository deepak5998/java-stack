#!/bin/bash

rs=5;
count=0;
flag=0;
while [ $rs -ne 0 ]
do
read -p "Enter 0 for Loose and 1 for Win: " bet
count=$((count+1))
case $bet in
	0)
		echo "Loose";
		rs=$(($rs-1));;
	1)
		flag=$(($flag+1))
		echo "Win";
		rs=$(($rs+1));;
esac
if [ $rs -eq 0 -o $rs -eq 10 ]
then
	break
fi
done
echo "Total bets: $count"
echo "Total Wins: $flag"
