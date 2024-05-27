count=0
for i in 1 2 3 4 5 6 
do 
	echo Hello
	echo $i
	count=`expr $count + 1`
done
echo $count
