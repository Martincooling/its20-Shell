#!/bin/bash
#KÖR MED ./scriptname.sh

#UPPGIFT 1
#dt=$(date "+%d/%m/%Y");
#xmas=$(date -d "20201224" +%j);
#echo $(( ($(date -d $xmas +%s) - $(date -d $dt +%s)) / 86400 )) "days left :)"

#UPPGIFT 2 Funkar I linux
while [[ "$#" > 0 ]]; do case $1 in
 -d) d="$2"; shift;shift;;
 -f) f="$2";shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

find $d -name "*.$f" | xargs -d '\n' du -sh




