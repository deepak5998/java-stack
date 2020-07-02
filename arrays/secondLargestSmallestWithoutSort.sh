#!/bin/bash

function findMaxAndMin(){
    largest=100
    smallest=1000
    for ((j=0; j<10; j++))
    do
        if [ ! -z ${randomNumberArray[$j]} ]
        then
            if [ ${randomNumberArray[$j]} -le $smallest ]
            then
                smallest=${randomNumberArray[$j]}
            fi
            if [ ${randomNumberArray[$j]} -ge $largest ]
            then
                largest=${randomNumberArray[$j]}
            fi
        fi       
    done
}

for ((i=0; i<10; i++))
do
    randomNumberArray[$i]=$((RANDOM % 900 + 100))
done
echo ${randomNumberArray[@]}
findMaxAndMin
echo $largest
echo $smallest 
for ((k=0; k<=${#randomNumberArray[@]}; k++))
do
    if [ ${randomNumberArray[k]} -eq $smallest -o ${randomNumberArray[k]} -eq $largest ]
    then
        unset randomNumberArray[$k]
    fi
done
echo ${randomNumberArray[@]}
findMaxAndMin
echo $smallest
echo $largest
