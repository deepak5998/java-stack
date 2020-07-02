#!/bin/bash

#usingCase
week=`shuf -i 1-8 -n 1`
case $week in
	1)
		echo Sunday;;
	2)
		echo Monday;;
	3)
		echo Tuesday;;
	4)
		echo Wednesday;;
	5)
		echo Thursday;;
	6)
		echo Friday;;
	7)
		echo Saturday;;
	*)
		echo Not a correct no.;
esac

#usingifelif
if [ $week == 1 ]
then
	echo Sunday;
elif [ $week == 2 ]
then
	echo Monday;
elif [ $week == 3 ]
then
	echo Tuesday;
elif [ $week == 4 ]
then
	echo Wednesday;
elif [ $week == 5 ]
then
	echo Thursday;
elif [ $week == 6 ]
then
	echo Friday;
elif [ $week == 7 ]
then
	echo Saturday;
else
	echo Not a correct no.;
fi
