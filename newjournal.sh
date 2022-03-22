#!/bin/bash

#### date manipulations #####
min=$(date +%M);
hr=$(date +%H);
day=$(date +%d);
month=$(date +%m);
year=$(date +%Y);
dayName=$(date +%A);
monthName=$(date +%B);
dayHalf=$(date +%p);
shortDay=$(date +%-d);
shortMonth=$(date +%-m);
shortHour=$(date +%l);
suffix=th;

# generate date number suffix for readable entry;
if [ $day == 1 ] || [ $day == 21 ] || [ $day == 31 ]; then suffix=st; fi;
if [ $day == 2 ] || [ $day == 22 ]; then suffix=nd; fi;
if [ $day == 3 ] || [ $day == 23 ]; then suffix=rd; fi;


#### path and filename ####
filePath=~/journal;
if [ ! -d $filePath ]; then mkdir $filePath;fi;

filename=journal$year$month$day$hr${min}.txt;
contentString=$dayName", "$shortDay$suffix" "$monthName" "$year" at "$shortHour:$min$dayHalf;




touch ~/journal/$filename;
# use append in case another entry created in current minute; 
echo $contentString >> ~/journal/$filename;
echo " " >> ~/journal/$filename;


open -a TextEdit ~/journal/$filename;

