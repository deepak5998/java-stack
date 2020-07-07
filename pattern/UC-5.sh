#!/bin/bash -x

shopt -s extglob
read -p "Enter the password:" pwd
pat='(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$'
if [[ $pwd =~ $pat ]]
then
   echo "Password accepted"
else
   echo "Invalid password"
fi
