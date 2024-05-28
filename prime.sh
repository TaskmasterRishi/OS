echo "Enter a number"
read num

if [ $num -lt 2 ]; then
    echo "It is not a prime"
    exit 0
fi

i=1
count=0

while [ $i -le $num ]; do
    if [ $((num % i)) -eq 0 ]; then
        count=$((count + 1))
    fi
    i=$((i + 1))
done

if [ $count -eq 2 ]; then
    echo "It is a prime"
else
    echo "It is not a prime"
fi

