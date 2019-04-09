#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "3. Создайте функцию, в которую передается текст, состоящий из более 20 слов."
echo "Текст передается из файла. Функция обрабатывает текст выводит каждое второе слово."
echo
echo
fi
function myf
{
touch file
buf1=" «Ева» — аниме-сериал жанра «меха» режиссёра Хидэаки Анно, выпускавшийся студией Gainax с 4 октября 1995 года по 27 марта 1996 года. Первые серии стали экранизацией одноимённой манги «Евангелион» Ёсиюки Садамото, публикуемой с 1 февраля 1995 года и завершённой лишь в июне 2013 года. "
echo $buf1
buf2=`echo -n $buf1 | sed 's/ /\n/g'`
echo -e "$buf2" >>file 
echo
echo
echo $buf2
echo
echo
readarray ARRAY < file
index=0 
while read line; do 
array[$index]="$line" 
index=$(($index+1)) 
done < file
for ((a=1; a < ${#array[@]}; a+=2)) 
do 
echo ${array[$a]}
done
rm file
}
myf
