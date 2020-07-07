#!/bin/bash -x

shopt -s extglob
read -p "Enter mobile no:" num
pat='^([1-9]{1,3}[- ]?)[0-9]{10}$'
if [[ $num =~ $pat ]]
then
   echo "Valid Number"
else
   echo "Invalid Number"
fi
