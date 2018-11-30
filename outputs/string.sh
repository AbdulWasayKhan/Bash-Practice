#!/bin/bash

str1=""
str2="Sad"
str3="Happy"

if [ "$str1" ]; then
	echo "$str1 is not null"
fi

# We can also check if the string has the value or not
if [ -z "$str1" ]; then
	echo "str1 has no value"
fi

# Check for equality

if [ "$str2" == "$str3" ]; then
	echo "$str2 equals $str3"
elif [ "$str2" != "$str3" ]; then
	echo "$str2 is not equal to $str3"
fi

# checking if str2 is greater than str3

if [ "$str2" > "$str3" ]; then
	echo "$str2 is greater then $str3"
elif [ "$str2" < "$str3" ]; then
	echo "$str2 is less then $str3"
fi
