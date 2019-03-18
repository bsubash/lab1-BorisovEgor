#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Task"
echo "12"
fi

#Code
echo "Input number of students"
read n
touch file
for ((i=0;i<n; i++))
do
echo "Input username$1:"
read a
echo -e "$a" >>file
done
readarray ARRAY < file
ind=0
while read line; do
array[$ind]="$line"
ind=$(($ind+1))
done < file
echo "Input username to find:"
read find
for ((a=0; a<${#array[@]}; a++))
do
if [[ ${array[$a]} =~ "$find" ]]
then
echo "file was found"
rm file
exit 0
fi
done
echo "file was't found"
rm file

