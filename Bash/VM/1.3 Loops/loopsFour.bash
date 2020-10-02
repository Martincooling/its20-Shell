#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -tal1) tal1="$2"; shift;shift;;
 -tal2) tal2="$2"; shift;shift;;
 -tal3) tal3="$2"; shift;shift;;
 -tal4) tal4="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

maxvarname() {
    for i; do
        echo "${!i} $i"
    done | sort -nr | sed -n '1s/.* \(.*\)/\1/p'
}
vname=$(maxvarname tal1 tal2 tal3 tal4)
echo "Max value is in the variable named: '$vname' and its value is: ${!vname}"
