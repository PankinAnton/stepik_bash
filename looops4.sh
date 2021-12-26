#!/bin/bash
name=name
age=age

while ! [[ -z $name ]]
do 
	echo "enter your name:"
	read name
	echo "enter your age:"
	read age
	if [[ $age -gt 0 || $age -lt 16 ]]
	then
		echo "$name, your group is child"
	elif [[ $age -gt 17 && $age -lt 26 ]]
	then
		echo "$name, your group is youth"
	else 
		echo "$name, your group is adult"
	fi;
	echo $name
	echo $age
	echo "bye"
done
exit 0
