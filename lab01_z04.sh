#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание "
echo "4.Вывести список всех глобальных переменных (env или printenv)."
echo 
echo
fi
#Код скрипта
env hello=1
echo $printenv
