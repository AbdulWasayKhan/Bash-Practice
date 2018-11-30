#!/bin/bash

# reading information from the user
read -p "Validate Date: " date

# pattern that we are looking for and carrot is for beginning pattern and $ end of the pattern

pat="^[0-9]{8}$" 

if [[ $date =~ $pat ]]; then
	echo "$date is valid"
else
	echo "$date not valid"
fi

