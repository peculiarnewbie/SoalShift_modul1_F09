#!/bin/bash

FILES=nature/*
num=1

for f in $FILES
do
	echo "doing $num"
	base64 -d $f | xxd -r > decoded/pic$num.jpg
	num=$((num+1))
done
