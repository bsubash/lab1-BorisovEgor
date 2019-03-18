#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Task 13"
fi
#Script
unset var1
unset var2
echo "Input first variable"
read var1
echo "Input second variable"
read var2
if test "$var1" -gt "$var2"
then
echo "var1 > var2"
else 
echo "var1 isn't greater then var2"
fi
