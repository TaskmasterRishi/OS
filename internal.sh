#!/bin/sh

# Clear the prime.txt and armstrong.txt files to start fresh
> prime.txt
> armstrong.txt
> perfect.txt

# Check for prime numbers
for num in $(cat number.txt)
do
    if [ $num -lt 2 ]; then
        continue  
    fi

    count=0
    i=1

    while [ $i -le $num ]; do
        if [ $((num % i)) -eq 0 ]; then
            count=$((count + 1))
        fi
        i=$((i + 1))
    done

    if [ $count -eq 2 ]; then
        echo $num >> prime.txt  
    fi
done

# Check for Armstrong numbers
for num in $(cat number.txt)
do 
    digit=${#num}
    temp=$num
    sum=0
    if [ $digit -le 2 ]; then
    	continue
    fi
    while [ $temp -gt 0 ]; do
        rem=$((temp % 10))
        pow=$(echo "$rem^$digit" | bc)
        sum=$((sum + pow))
        temp=$((temp / 10))
    done

    if [ $sum -eq $num ]; then
        echo $num >> armstrong.txt  
    fi
done

for num in $(cat number.txt)
do
	if [ $num -lt 1 ]; then
		continue
	fi

	sum=0
	i=1

	while [ $i -lt $num ]; do
	    if [ $((num % i)) -eq 0 ]; then
		sum=$((sum + i))
	    fi
	    i=$((i + 1))
	done

	if [ $sum -eq $num ]; then
	    echo $num >> perfect.txt
	fi
done
