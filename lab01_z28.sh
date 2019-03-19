#!/bin/bash 
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Task 28 "
fi

#Script
declare -i n
echo "Input the number of file (name):" 
read n
touch file1 
for ((a=1; a < n+1; a++)) 
do 
echo "Input filename $a:" 
read fn
echo -e "$fn" >>file1 
done 
readarray ARRAY < file1
ind2=1
ind=0 
while read line; do 
array[$ind]="$line" 
ind=$(($ind+1)) 
done < file1 
for ((i=0; i < n; i++)) 
do 
echo "File ${array[$i]} was created" 
touch "${array[$i]}" 
done 
for ((i=0; i < n; i++)) 
do  
if test -f ${array[$i]} 
then
echo "file ${array[$i]} was  deleted";
rm "${array[$i]}"
else 
echo "file ${array[$i]}  was already deleted" 
fi 
done 
rm file1
