#!/bin/bash

one=$((((RANDOM%90))+10));
two=$((((RANDOM%90))+10));
three=$((((RANDOM%90))+10));
four=$((((RANDOM%90))+10));
five=$((((RANDOM%90))+10));
sum=$(($one+$two+$three+$four+$five));
avg=$(((($sum))/5));
