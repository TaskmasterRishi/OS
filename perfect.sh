echo "Enter a number"
read num

if [ $num -lt 1 ]; then
    echo "$num is not a perfect number"
    exit 0
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
    echo "$num is a perfect number"
else
    echo "$num is not a perfect number"
fi

6
