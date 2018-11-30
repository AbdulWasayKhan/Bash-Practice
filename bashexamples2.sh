#!/bin/bash


#---------------------------------------------------
# strings concatenation
#---------------------------------------------------

echo "Please enter the first string: "
read str1

echo "Please enter the second string: "
read str2

s3=$str1$str2 # it works!
echo $s3

s4=${str1}${str2} # it works too!
echo $s4

#---------------------------------------------------
# length of string
#---------------------------------------------------

echo "Input the string"
read str

leng=`expr length $str`
echo "length= "$leng

#---------------------------------------------------
# simplest function example
#---------------------------------------------------

#---------------------------
func()
{
	echo "Inside function"
}

#---------------------------
echo "Now function call..."
func
echo "end of main"


#---------------------------------------------------
# function can see variables of main program
#---------------------------------------------------

func()
{
	echo $var
}

var="test of global "
func

#---------------------------------------------------
# pass of parameters to function
#---------------------------------------------------

func()
{
	echo "We are in function now"
	echo $0  # shell script name
	echo $1  # first parameter
	echo $2  # second parameter
	echo "We leave function..."
	exit 0
}

func  123  "abc"


#---------------------------------------------------
# recursive function example
# calculation of factorial
#---------------------------------------------------

factorial()
{
	if [ "$1" -gt "1" ]
	then
		i=`expr $1 - 1`
		j=`factorial $i`
		k=`expr $1 \* $j`
		echo "The factorial is: $k"
	else
		echo 1
	fi
}
read x
factorial $x

#------------------------------------------------------------
# simpiest array : declaration, element access and assignment
#------------------------------------------------------------

arr=(aa bb cc dd)

echo ${arr[0]} # curly bracket notation
echo ${arr[1]}
echo ${arr[2]}
echo ${arr[3]}

arr[2]="CCCCCCC"
echo ${arr[2]}

#-------------------------------------------------------
