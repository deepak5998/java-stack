#!/bin/bash

a=`shuf -i 1-4 -n 1`
read -p "Enter the length:" L
case $a in
	1)
		res=$(echo |awk '{ print L*12 }' L=$L);
		echo "$res inches";;
	2)
		res=$(echo |awk '{ print L*0.3048}' L=$L);
		echo "$res meters";;
	3)
		res=$(echo |awk '{ print L*0.0833}' L=$L);
		echo "$res feets";;
	4)
		res=$(echo |awk '{ print L*3.2808}' L=$L);
		echo "$res ft.";;
	*)
		echo Invalid Choice;;
esac
