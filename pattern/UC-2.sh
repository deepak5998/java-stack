#!/bin/bash -x

shopt -s extglob
read -p "Enter Last name:" name
pat='^([A-Z][a-zA-Z]{2,})$'
if [[ $name =~ $pat ]]
then
   echo "Valid lastname"
else
   "Invalid lastname"
fi
