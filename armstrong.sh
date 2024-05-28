echo "Enter a number"
read num
digit=${#num}
i=0
temp=$num
sum=0
while [ $num -gt 0 ]; do
    rem=$(($num%10))
    pow=$(echo "$rem^$digit" | bc)
    sum=$(($sum + $pow))
    num=$(($num / 10))
done
if [ $temp -eq $sum ]; then
    echo "$temp is an Armstrong number"
else
    echo "$temp is not an Armstrong number"
fi

