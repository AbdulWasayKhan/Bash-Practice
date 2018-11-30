#!/bin/bash

# basic commands in bash

echo $((5**2))
echo $(( 5%4 ))

rand=5
let rand+=4
echo "$rand"

# increamenting values

# This says first print then add
echo "rand++ = $(( rand++ ))"

# this says first  increment then print thats why it prints 11 as 
#previously it was 10 stored in rand

echo "++rand = $(( ++rand ))"

#first print then decrement
echo "rand-- = $(( rand-- ))"
# first decrement than print.
echo "--rand = $(( --rand ))"

num7=1.2
num8=3.4

# for using floating points or printing floating point there
# are different ways one way is using python -c

num9=$(python -c "print $num7+$num8")
echo $num9

# for printing out multiple lines and whch is called hero script?

# how the lines are going to end.

cat<< END
This text prints
on many lines.
END 
