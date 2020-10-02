#!/bin/bash

TODAY=`date +%j`                 # Today, as day-of-year (1-366)
CHRISTMAS=`date -d 25-Dec +%j`   # Christmas day, in same format
BIRTHDAY=`date -d 07-Jan +%j`
let DaysSince=$BIRTHDAY-$TODAY
echo "There are $(($CHRISTMAS - $TODAY)) days until Christmas."
abs_value=$DaysSince; echo ${abs_value#-} "days has passed since your birthday"

