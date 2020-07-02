#!/bin/bash

#a=`shuf -i 1-6 -n 1`;
#b=`shuf -i 1-6 -n 1`;
a=$((((RANDOM%6))+1));
b=$((((RANDOM%6))+1));
c=$(($a+$b));
echo $c;
