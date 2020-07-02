#!/bin/bash

read -p "Enter first value a" a
read -p "Enter second value b" b
read -p "Enter third value c" c
res1=$(echo |awk '{print a+b*c}' a=$a b=$b c=$c)
echo $res1
res2=$(echo |awk '{print c+a/b}' a=$a b=$b c=$c)
echo $res2
res3=$(echo |awk '{print a%b+c}' a=$a b=$b c=$c)
echo $res3
res4=$(echo |awk '{print a*b+c}' a=$a b=$b c=$c)
echo $res4

if [ $res1 -ge $res2 ] && [ $res1 -ge $res3 ] && [ $res1 -ge $res4 ]
then
	echo "$res1 is Maximum"
	if [ $res2 -le $res3 ] && [ $res2 -le $res4 ]
	then
		echo  "$res2 is Minimum"
	elif [ $res3 -le $res2 ] && [ $res3 -le $res4 ]
	then
		echo "$res3 is Minimum"
	else
		echo "$res4 is Minimum"
	fi
elif [ $res2 -ge $res3 ] && [ $res2 -ge $res4 ]
then
	echo "$res2 is Maximum"
	if [ $res1 -le $res3 ] && [ $res1 -le $res4 ]
	then
		echo "$res1 is Minimum"
	elif [ $res3 -le $res1 ] && [ $res3 -le $res4 ]
	then
		echo "$res3 is Minimum"
	else
		echo "$res4 is Minimum"
	fi
elif [ $res3 -ge $res4 ]
then
	echo "$res3 is Maximum"
	if [ $res1 -le $res2 ] && [ $res1 -le $res4 ]
	then
		echo "$res1 is Minimum"
	elif [ $res2 -le $res1 ] && [ $res2 -le $res4 ]
	then
		echo "$res2 is Minimum"
	else
		echo "$res4 is Minimum"
	fi
else
	echo "$res4 is Maximum"
	if [ $res1 -le $res2 ] && [ $res1 -le $res3 ]
	then
		echo "$res1 is Minimum"
	elif [ $res2 -le $res1 ] && [ $res2 -le $res3 ]
	then
		echo "$res2 is Minimum"
	else
		echo "$res3 is Minimum"
	fi
fi
