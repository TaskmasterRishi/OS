echo Enter a number
read x
sum=0
i=1
while [ $i -le $x ]
do
	sum=$((sum+i))
	i=$((i+1))
done
echo Sum is $sum
average=$(echo "scale=2; $sum / $x" | bc)
echo "Average is $average"
