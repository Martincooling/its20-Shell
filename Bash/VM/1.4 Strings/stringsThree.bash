#!/bin/bash
txt="c:\hej\test\hello.txt"

echo $txt | grep -b -o '\\'
echo " "

echo $txt | grep -b -o '\\' | tail -1
echo " "

echo $txt | grep -b -o '\\' | tail -1 | cut -d : -f 1
echo " "

b=$(basename $txt)
echo $b
echo " "

if [[ $txt == *"hej"* ]]
then
    echo "ja"
fi
 
