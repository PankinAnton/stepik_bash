#!/bin/bash

echo "Hi!"
if [[ -s $0 ]] 
then
  echo "True"
  echo $0
  exit
fi
