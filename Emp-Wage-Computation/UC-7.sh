#!/bin/bash

function workHours {
read -p "Enter 1 for full time and 2 for Part time: " option
if [ $option -eq 1 ]
then
   echo "Full time working hours: $1"
else
   echo "Part time working hours: $2"
fi
}

workHours 100 50
