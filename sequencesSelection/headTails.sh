#!/bin/bash

value=$((RANDOM%2))
case $value in
	0)
		echo Head;;
	1)
		echo Tails;;
esac
