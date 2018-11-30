#!/bin/bash

read -p "What's your name? " name
echo "Hi $name"
read -p "How old are you? " age

if [ $age -eq 16  ]
then
	echo "You are teen"
elif [[ $age -ge 20 && $age -le 30 ]]
then
	echo "You are adult"
else
	echo "You are old"
fi
 
