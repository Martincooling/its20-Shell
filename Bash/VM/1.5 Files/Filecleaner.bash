#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
  -d) d=$2; shift;shift;;
  -f) f=$2;shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done
currentDate=$(date +"%Y-%m-%d %T")
logPath=/home/martin/FileCleaner/Loggbook.txt
FILES="$d"/*
for fa in $FILES
do
        if [[ $fa == *"$f"*  ]]
        then
                size=$(stat -c%s "$fa")
                echo "$fa $size"
        fi
if [[ $fa != *"$f"*  ]]; then
	find $d -type f -not -name "*$f" -delete
	echo "$currentDate file $fa has been removed" >> $logPath
fi
done
