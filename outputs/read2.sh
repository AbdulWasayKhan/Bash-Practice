#!/bin/bash

# read multiple values
	
read -p "Enter 2 Numbers to Sum : " num1 num2
	
sum=$((num1+num2))
echo "$num1 + $num2 = $sum"

# -sp is for the prompt

read -sp " Enter the secret code " secret
if [ "$secret" == "password" ]; then
	echo " Enter "
else
	echo "Wrong pass"
fi

