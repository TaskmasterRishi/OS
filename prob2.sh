sum=0
par='1 2 3 4 5 6 7 8 9 10'
for i in $par
do 
	sum=`expr $sum + $i`
done
echo Sum of 1 to 10
echo $sum
sum=0
echo Give random 10 numbers
for i in $par
do
	read n
	sum=`expr $sum + $n`
done
echo Sum 10 given numbers
echo $sum

