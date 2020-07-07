#!/bin/bash -x

shopt -s extglob
read -p "Enter first name:" name
pat='^([A-Z][a-zA-Z]{2,})$'
if [[ $name =~ $pat ]]
then
   echo "Valid username"
else
   echo "Invalid username"
fi
