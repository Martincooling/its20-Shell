#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -tal1) tal1="$2"; shift;shift;;
 -tal2) tal2="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done
summa = 0
let summa=tal1+tal2
echo "Summan är $tal1 och $tal2 är $summa"
