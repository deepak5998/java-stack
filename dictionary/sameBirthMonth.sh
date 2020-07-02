#!/bin/bash

declare -A birthMonth
janCount=0;
febCount=0;
marCount=0;
aprCount=0;
mayCount=0;
junCount=0;
julCount=0;
augCount=0;
sepCount=0;
octCount=0;
novCount=0;
decCount=0;
for (( i=1; i<=50; i++ ))
do
birthMonth=$(shuf -i 1-12 -n 1)
case $birthMonth in
	1)
		janArr[$janCount]="person$i"
		janCount=$(($janCount+1))
		birthDate["jan"]=${janArr[@]};;
	2)
		febArr[$febCount]="person$i"
		febCount=$(($febCount+1))
		birthDate["feb"]=${febArr[@]};;
	3)
	   marArr[$marCount]="person$i"
		marCount=$(($marCount+1))
		birthDate["mar"]=${marArr[@]};;
	4)
   	aprArr[$aprCount]="person$i"
		aprCount=$(($aprCount+1))
		birthDate["apr"]=${aprArr[@]};;
	5)
   	mayArr[$mayCount]="person$i"
		mayCount=$(($mayCount+1))
		birthDate["may"]=${mayArr[@]};;
	6)
   	junArr[$junCount]="person$i"
		junCount=$(($junCount+1))
		birthDate["jun"]=${junArr[@]};;
	7)
   	julArr[$julCount]="person$i"
		julCount=$(($julCount+1))
		birthDate["jul"]=${julArr[@]};;
	8)
   	augArr[$augCount]="person$i"
		augCount=$(($augCount+1))
		birthDate["aug"]=${augArr[@]};;
	9)
   	sepArr[$sepCount]="person$i"
		sepCount=$(($sepCount+1))
		birthDate["sep"]=${sepArr[@]};;
	10)
   	octArr[$octCount]="person$i"
		octCount=$(($octCount+1))
		birthDate["oct"]=${octArr[@]};;
	11)
	   novArr[$novCount]="person$i"
		novCount=$(($novCount+1))
		birthDate["nov"]=${novArr[@]};;
	12)
	   decArr[$decCount]="person$i"
		decCount=$(($decCount+1))
		birthDate["dec"]=${decArr[@]};;
esac
done

read -p "which month data do you need from 1-12 : " userMonth
case $userMonth in
	1)
		echo "January: ${birthDate["jan"]}" ;;
	2)
   	echo "Feburary: ${birthDate["feb"]}" ;;
	3)
   	echo "March: ${birthDate["mar"]}" ;;
	4)
   	echo "April: ${birthDate["apr"]}" ;;
	5)
   	echo "May: ${birthDate["may"]}" ;;
	6)
   	echo "June: ${birthDate["jun"]}";;
	7)
   	echo "July: ${birthDate["jul"]}" ;;
	8)
   	echo "August: ${birthDate["aug"]}" ;;
	9)
   	echo "September: ${birthDate["sep"]}";;
	10)
   	echo "October: ${birthDate["oct"]}" ;;
	11)
   	echo "November: $ {birthDate["nov"]}" ;;
	12)
   	echo "December: ${birthDate["dec"]}";;
	*)
		echo ${birthDate["jan"]}
		echo ${birthDate["feb"]}
		echo ${birthDate["mar"]}
		echo ${birthDate["apr"]}
		echo ${birthDate["may"]}
		echo ${birthDate["jun"]}
		echo ${birthDate["jul"]}
		echo ${birthDate["aug"]}
		echo ${birthDate["sep"]}
		echo ${birthDate["oct"]}
		echo ${birthDate["nov"]}
		echo ${birthDate["dec"]}
esac

echo ${birth["jan"]}
echo ${birth["feb"]}
echo ${birth["mar"]}
echo ${birth["apr"]}
echo ${birth["may"]}
echo ${birth["jun"]}
echo ${birth["jul"]}
echo ${birth["aug"]}
echo ${birth["sep"]}
echo ${birth["oct"]}
echo ${birth["nov"]}
echo ${birth["dec"]}

