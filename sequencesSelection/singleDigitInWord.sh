#!/bin/bash

#usingCase
num=`shuf -i 0-10 -n 1`
case $num in
	0)
		echo Zero;;
	1)
		echo One;;
	2)
		echo Two;;
	3)
		echo Three;;
	4)
		echo Four;;
	5)
		echo Five;;
	6)
		echo Six;;
	7)
		echo Seven;;
	8)
		echo Eight;;
	9)
		echo Nine;;
	*)
		echo Not a Single digit no.
esac

#usingifelif
if [ $num == 0 ]
then
	echo Zero;
elif [ $num == 1 ]
then
	echo One;
elif [ $num == 2 ]
then
	echo Two;
elif [ $num == 3 ]
then
	echo Three;
elif [ $num == 4 ]
then
	echo Four;
elif [ $num == 5 ]
then
	echo Five;
elif [ $num == 6 ]
then
	echo Six;
elif [ $num == 7 ]
then
	echo Seven;
elif [ $num == 8 ]
then
	echo Eight;
elif [ $num == 9 ]
then
	echo Nine;
else
	echo Not a Single digit no.
fi
