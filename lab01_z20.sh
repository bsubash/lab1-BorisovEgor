#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];then
echo "Task 20"
fi

#Script
unset str1
unset str2
echo "Input first string"
read str1
echo "Input second string"
read str2
if [ "$str1" > "$str2 " ]
then
echo "Yes"
else
echo "No"
fi
