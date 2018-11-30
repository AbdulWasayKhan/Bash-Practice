#!/bin/bash

#--------------------------------------------------------------
# Write a bash script which does just one thing: saying "HELLO".
#--------------------------------------------------------------

echo HELLO

#--------------------------------------------------------------------------
# Your task is to use for loops to display only odd natural numbers from 1 to 99.
#---------------------------------------------------------------------------

for i in {1..99}
do
    if [ $(( i % 2 )) -ne 0 ];
        then
        echo $i
    fi
done

#-----------------------------------------------------------------------
# Write a Bash script which accepts name as input and displays a greeting: "Welcome (name)"
#------------------------------------------------------------------------

read name
echo "Welcome $name"

#----------------------------------------------------------
# Use for loops to display the natural numbers from 1 to 50.
#----------------------------------------------------------

for i in {1..50}
do
   echo $i
done

#----------------------------------------------------------------------------- 
#Given two integers, X and Y, find their sum, difference, product, and quotient.
#----------------------------------------------------------------------------

read firstInput
read secondInput
let sum=$firstInput+$secondInput
let difference=$firstInput-$secondInput
let product=$firstInput*$secondInput
let quotient=$firstInput/$secondInput
echo $sum
echo $difference
echo $product
echo $quotient

#---------------------------------------------------------------------------
#Comparing Numbers: Given two integers, X and Y, identify whether X < Y or X > Y or X = Y.
#---------------------------------------------------------------------------

read X
read Y
if (($X < $Y));
then
	echo "X is less than Y"
elif (($X > $Y));
then
	echo "X is greater than Y"

else
	echo "X is equal to Y"
fi

#--------------------------------------------------------------------
# Read in one character from the user (this may be 'Y', 'y', 'N', 'n'). 
#If the character is 'Y' or 'y' display "YES". 
#If the character is 'N' or 'n' display "NO". 
#No other character will be provided as input.
#-------------------------------------------------------------------

read input
if [[ $input == Y || $input == y ]]
then
	echo "YES"

elif [[ $input == N || $input == n ]]
then
	echo "NO"
fi

#----------------------------------------------------------------------------
# Given three integers (X,Y, and Z) representing the three sides of a triangle,
# identify whether the triangle is Scalene, Isosceles, or Equilateral.
#----------------------------------------------------------------------------

read X
read Y
read Z

if [[ $X == $Y && $Y == $Z ]]
then
	echo "EQUILATERAL"

elif [[ $X == $Y || $X == $Z || $Y == $Z ]]
then
	echo "ISOSCELES"
else
	echo "SCALENE"
fi

#----------------------------------------------------------------------
# We provide you with expressions containing +,-,*,^, / and parenthesis. 
# None of the numbers in the expression involved will exceed 999.
#----------------------------------------------------------------------

read input
printf "%.3f \n" $(echo $input | bc -l)

#------------------------------------------------------------------------
# Given N integers, compute their average correct to three decimal places.
#------------------------------------------------------------------------

read num
for ((i=0; i<=num-1; i++))
do
	read val
	total=$((total+val))
done
printf "%.3f\n" $(echo $total/$num | bc -l)

#------------------------------------------------------------------------
