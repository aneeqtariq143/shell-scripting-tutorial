#!/bin/bash

first=10
second=5
word="abcd"

if [ $first -gt 9 ]
then
    echo "First Condition is true"
else
    echo "Condition not true"
fi

# General the `>` kind of operator are used in double `(())`
if (($second > 9))
then
    echo "Second Condition is true"
else
    echo "Second Condition not true"
fi

if [ $word == "abc" ]
then
    echo "1st Word matched"
elif [ $word == "abcd" ] 
then
    echo "2nd word match"
else
    echo "Word Not Matched"
fi
