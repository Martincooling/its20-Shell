#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -d) d="$2"; shift;shift;;
 -f) f="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

find $d -name "*.$f" | xargs -d '\n' du -sh
