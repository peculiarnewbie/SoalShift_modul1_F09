#!/bin/bash

minute=`date +"%M"`
hour=`date +"%H"`
day=`date +"%d"`
month=`date +"%m"`
year=`date +"%Y"`

intH=`echo "$hour" | bc`

echo $hour
echo $intH

lowA=$((97+$intH))
if [ $lowA == 97 ]
then
	lowZ=122
else
	lowZ=$(($lowA - 1))
fi
echo $lowA
echo $lowZ
lowA=$(awk -v num="$lowA" 'BEGIN{printf "%c", num}')
lowZ=$(awk -v num2="$lowZ" 'BEGIN{printf "%c", num2}')
echo $lowA
echo $lowZ

highA=$((65+$intH))
if [ $highA == 65 ]
then
        highZ=90
else
        highZ=$(($highA - 1))
fi
highA=$(awk -v num="$highA" 'BEGIN{printf "%c", num}')
highZ=$(awk -v num="$highZ" 'BEGIN{printf "%c", num}')
echo $highA
echo $highZ

cd encrypted

cat /var/log/syslog | tr [a-z] ["$lowA"-za-"lowZ"] | tr [A-Z] ["$highA"-ZA-"highZ"] > "$hour:$minute $day-$month-$year".txt
