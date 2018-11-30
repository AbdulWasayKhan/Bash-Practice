#!/bin/bash

# Store the original value of IFS
	OIFS="$IFS"
	
# Set what separates the input values
	IFS=","
	
	read -p "Enter 2 numbers to add separated by a comma" num1 num2
	
# Use the parameter expansion ${} to substitute any whitespace
# with nothing
	num1=${num1//[[:blank:]]/}
	num2=${num2//[[:blank:]]/}
 
	sum=$((num1+num2))
	
	echo "$num1 + $num2 = $sum"
	
# Reset IFS to the original value
	IFS="$OIFS"
	
# Parameter expansion allows you to do this
	name="Derek"
	echo "${name}'s Toy"
	
# The search and replace allows this
	samp_string="The dog climbed the tree"
	echo "${samp_string//dog/cat}"

# You can assign a default value if it doesn't exist
	echo "I am ${name:-Derek}"
	
	# This uses the default if it doesn't exist and assigns the value
	# to the variable
	echo "I am ${name:=Derek}"
	echo $name
