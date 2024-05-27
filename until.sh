#!/bin/bash

echo "Enter a number:"
read x

i=0
until [ $i -gt $x ]
do 
    echo $i
    i=$((i+1))
done

