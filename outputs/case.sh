#!/bin/bash

read -p "How old are you: " age

case $age in
[0-4])
	echo "To young for school"
 ;;

5)
	echo "Go to Kindergarden"
 ;;

# this is gonna check if the number is between 6 to 18 using pipe

[6-9]|[0-8])
	grade=$((age-5))
	echo "Go to grade $grade"
 ;;

*)
 echo "you are too old for school"
;;
esac # end case

can_vote=0
age=18

((age>=18?(can_vote=1):(can_vote=0)))
	echo "Can Vote : $can_vote"
