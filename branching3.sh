#!/bin/bash
re='^[0-9]+$'
if [[ $# -ne 1 ]] 
then
  echo "You should specify exactly one argument!"
elif [[ -z $1 ]]
then 
    echo “Aргумент пустой!”
elif ! [[ $1 =~ $re ]]
then
    echo "Argument is not a natural number!"
elif [[ $1 == 0 ]]
then 
    echo "No students"
elif [[ $1 == 1 ]]
then
    echo "$1 student"
elif [[ $1 -gt 4 ]];
then
    echo "A lot students!"
else 
    echo "$1 students!"
fi;


