#!/bin/bash -x

shopt -s  extglob

pat='^[1-9][0-9]{2} {0,1}[0-9]{3}$'
read -p "Enter Pin Code:" pin
if [[ $pin =~ $pat ]]
then
   echo Matches;
else
   echo Not Matches;
fi
