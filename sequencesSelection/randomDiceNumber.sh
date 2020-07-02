#!/bin/bash

#shuf -i 1-6 -n 6;
dice=$((((RANDOM%6))+1));
echo "The no. is:" $dice;
