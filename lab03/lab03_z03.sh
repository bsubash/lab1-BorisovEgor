#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Task"
	echo "3"
	echo 
	echo
fi
	sed '/^$/n;G' file.txt 
