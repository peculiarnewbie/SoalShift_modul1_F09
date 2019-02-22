#!/bin/bash

num=1

while [ 1 ]
do
	filename="password$num.txt"
	if [ -f $filename ]
	then
		num=$(($num+1))
	else
		break
	fi
done

echo "sini"
pswrd=`cat /dev/urandom | tr -dc 'a-z0-9A-Z' | fold -w 9 | head -n 1`
echo "sana"
a=`cat /dev/urandom | tr -dc 'a-z' | fold -w 1 | head -n 1`
b=`cat /dev/urandom | tr -dc '0-9' | fold -w 1 | head -n 1`
c=`cat /dev/urandom | tr -dc 'A-Z' | fold -w 1 | head -n 1`
pswrd="$pswrd$a$b$c"



echo $pswrd > $filename

