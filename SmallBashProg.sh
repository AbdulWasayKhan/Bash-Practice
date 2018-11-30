#!/bin/bash

# simpiest array : declaration, element access and assignment
#---------------------------------------------------

arr=(aa bb cc dd)

echo ${arr[0]} # curly bracket notation
echo ${arr[1]}
echo ${arr[2]}
echo ${arr[3]}

arr[2]="CCCCCCC"
echo ${arr[2]}


#---------------------------------------------------
# number of elements in array
#---------------------------------------------------

arr=(aa bb cc dd)

n=${#arr[@]}
echo $n


#---------------------------------------------------
# array with filenames of current directory
#---------------------------------------------------

arr=(*)  # * is list of all file and dir names

n=${#arr[@]}
echo "number of files and dirs "$n

echo ${arr[0]}
echo ${arr[1]}

#---------------------------------------------------
# get all array and print it
#---------------------------------------------------

arr=(aa bb cc dd ee ff gg)

echo ${arr[*]} # all array

echo ${arr[@]:0}   # aa bb cc dd ee ff gg

echo ${arr[@]:1}   # bb cc dd ee ff gg

echo ${arr[@]:2:3} # cc dd ee

for i in ${arr[*]}
do
	echo $i
done

#---------------------------------------------------
# adding element to array
#---------------------------------------------------

arr=(aa bb cc dd ee ff gg)

echo ${arr[*]}

arr=( "${arr[@]}" "newElem" ) # from right

echo ${arr[*]}

arr=( "newElem" "${arr[@]}" ) # from left

echo ${arr[*]}

#---------------------------------------------------
# remove last element from array
#---------------------------------------------------

arr=(aa bb cc dd ee ff gg)

echo ${arr[*]}

unset arr[${#arr[@]}-1]	#  move last element
echo ${arr[*]}

#---------------------------------------------------
# copying of array
#---------------------------------------------------


arr=(aa bb cc dd ee ff gg)

echo ${arr[*]}

arr2=( "${arr[@]}" )

echo ${arr2[*]}

#---------------------------------------------------
# get substring from string
#---------------------------------------------------

echo "long string input=?"
read st

st2=${st:2:4}

echo $st2


#---------------------------------------------------
# substring replacement "abc" to "xyz"
#---------------------------------------------------

echo "string input=?"
read str

st2=${str/abc/xyz} # only ones

echo $st2


#---------------------------------------------------
# search of character 'a' in a string
#---------------------------------------------------

echo "string input=?"
read str

pos=`expr index $str a`

echo "position of the first 'a' = "$pos


#---------------------------------------------------
# string list counting
#---------------------------------------------------

for i in aa bb cc dd ee ff gg hh
do
	echo $i
done


#---------------------------------------------------
# command line arguments
# separated by spaces
#---------------------------------------------------

echo $0  # script file name
echo $1  # first argument
echo $2  # second argument
echo $3  # third argument

#---------------------------------------------------
# command line arguments without script name number
# all command line without script name
#---------------------------------------------------

echo $#  # argument number

echo $*  # command line

echo $@

#---------------------------------------------------
# get all files and dir names
#---------------------------------------------------

echo *  # file and dir names of current dir

for i in *
do
	echo $i
done

echo ../*

#file and directory names of parent dir


