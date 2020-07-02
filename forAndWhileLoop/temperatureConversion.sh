#!/bin/bash

read -p "Enter Scale : " scale
read -p "Enter Temp from (0-100)degC or (32-212)degF: " temp

case $scale in
	C) n=$(echo | awk '{print one*(9/5)+32}' one=$temp )
   	echo "$n degF";;

	F) n=$(echo | awk '{print one*(5/9)}' one=$(( $temp-32 )) );
      echo "$n degC";;
esac
