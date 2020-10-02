#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -kat) kat="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

case $kat in
    "S"|"P")
        echo "20kr"
	;;
    "V")
        echo "30kr"
	;;
esac