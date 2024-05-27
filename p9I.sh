sum=0
count=0
for i in $*
do
	if [ $i -gt 10 ];then
		sum=$((sum+i))
	fi
	count=$((count+1))
done
echo Sum : $sum
if [ "$count" -gt 0 ]; then
    echo "Average: $(expr "$sum" / "$count")"
else
    echo "No numbers greater than 10 to calculate average."
fi
