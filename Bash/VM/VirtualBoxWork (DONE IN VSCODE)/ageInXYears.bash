#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -name) name="$2"; shift;shift;;
 -age)  age="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done
let age=age+5
echo "Hej $name in 5 years you'll be $age"