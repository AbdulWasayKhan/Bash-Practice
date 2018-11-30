#!/bin/bash

#----------------------------
# printing of string constant
#---------------------------

echo 'hello'
echo "hello"
echo hello

#--------------------------------------------
# declaration and printing of string variable
#--------------------------------------------

x='Wonderful new World'
echo $x
echo x # just string 'x'

#---------------------------------------------------
# indirect call of other programs
#---------------------------------------------------

x="pwd"
$x

x="ls -l"
$x

#---------------------------------------------------
# Anything enclosed in double quotes is passed on exactly 
# as presented with the exception that the values of 
# shell variables are substituted
#---------------------------------------------------

v1="abc "
v2="$v1 d"
echo $v1 $v2


#---------------------------------------------------
# Any matter enclosed in single quotes is passed on 
# exactly as presented. The values of shell variables 
# are not substituted. 
#---------------------------------------------------

v1="abc"
v2='$v1 d'
echo $v1 $v2

#---------------------------------------------------
# Back quotes are used to enclose commands. An item
# enclosed in back quotes is replaced by the standard
# output of the command. Shell variable values
# are substituted within back quotes.
#---------------------------------------------------

date=`date`
echo "The date is $date"

#-----------------------------------------------------------------
# escaping use for printing out the print work directory from Your
#-----------------------------------------------------------------

msg=`echo Your Current Directory is \`pwd\``

echo $msg

#---------------------------------------------------
# syntax:  many commands in one line !!!!
#---------------------------------------------------

echo "a"; echo "b"; echo "c"

var=5; echo `expr $var + $var`

#---------------------------------------------------
# integer variable and its increment
# does not works in sh !!!
#---------------------------------------------------

var=12345
let var=$var+1 # let is important
echo $var


 v=12345
 v=$v+1 # result "12345+1"

#---------------------------------------------------
# integer arithmetics - bash only !
#---------------------------------------------------


echo 'number=?' ; read x

let y=$x+$x ; echo 'x+x=' $y

let y=$x*$x ; echo 'square=' $y

let y=$x/3 ; echo 'x/3=' $y

let y=$x%7 ; echo 'x%7=' $y

#----------------------------------
# integer arithmetics by using expr
#----------------------------------

a=123
b=12

c=`expr $a + $b` # addition
echo $c

c=`expr $a \* $b` # multiplication
echo $c

c=`expr $a / $b` # division
echo $c

c=`expr $a % $b` # residual
echo $c

#---------------------------------------------------
# 10 random numbers generation using a while loop
#---------------------------------------------------

counter=0
while [ $counter -lt 10 ]
do
	x=$RANDOM
	echo $x
	let counter=$counter+1
done


#---------------------------------------------------
# simple use of  for ... in ...
#---------------------------------------------------

for i in "abc" "xyz" 1 2 99
do
	echo $i
done

#---------------------------------------------------
# use for as in C-programming
# sum of the first n integer numbers
#---------------------------------------------------

echo -n "Please enter the number: "
read n

sum=0 # here sum

for((i=1; i <=n ; i++))
do
	let sum=$sum+$i 
done

echo "sum= "$sum

#---------------------------------------------------
# operator case for selection of logical branches
# end marker ;; of branch
#---------------------------------------------------

echo "Please enter the string: "
read str

case "$str" in
	abc) echo "You entered a valid string which is = abc" 
		;;
	xyz) echo "You entered a valid string = xyz" 
		;;
	*)   echo "not abc, not xyz which is not a required string" ;;
esac

#---------------------------------------------------
# exit operator
#---------------------------------------------------


while [ 1 ]
do
	read x
	echo $x
	if [ $x -eq 0 ] # in $x must be number!
	then
		echo "script done ..."
		exit 0
	fi
done

#---------------------------------------------
