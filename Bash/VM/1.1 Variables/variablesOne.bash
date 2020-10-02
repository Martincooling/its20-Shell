#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -name) name="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

echo "hej $name"
