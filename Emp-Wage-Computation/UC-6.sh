#!/bin/bash
fullWorkingHours=100;
partWorkingHours=50;
workingDays=30;

function calculateSalary(){
   local workingDays=20;
   echo $workingDays
   read -p "If you are working part time enter 1 and if you are working full time enter 2 : " work
   if [ $work -eq 1 ]
   then
      n=$(echo |awk '{print one*two*three}' one=$fullWorkingHours two=$workingDays three=$1)
      echo $n
   elif [ $work -eq 2 ]
   then
      n=$(echo |awk '{print one*two*three}' one=$partWorkingHours two=$workingDays three=$1)
      echo $n
   else
      echo "Wrong input"
   fi
   return 10
}
calculateSalary 92.5
value=$?
echo $value
echo $val
