#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Task"
    echo "12.udalit vse probely i simvoly tabulyacii v nachale kajdoy stroki fajla "
    echo ""
    echo ""
    break
  fi
  ((i++))
done

if [ $# -ne 1 ]; then
  echo "Need at least one argument."
  exit
fi

cat $1 | sed 's/^[ \t]*//'
