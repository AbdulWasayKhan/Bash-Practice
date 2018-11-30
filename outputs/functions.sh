#!/bin/bash

getDate(){

# We have a function date which prints the current date and time
	date

  return
}
getDate

# global variable

name="Abdul Wasay"

demLocal(){
Local name="Khan"
return
}

demLocal
echo "$name"

# function with arguments

getSum(){

 local num3=$1
 local num4=$2

 local sum=$((num3+num4))
 echo $sum

}

num1=5
num2=6

sum=$(getSum num1 num2)
echo "The sum is $sum"

