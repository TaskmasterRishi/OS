count=0
for i in `cat file1.txt`
do	
	echo $i
	count=`expr $count + 1`
done
echo total no of words
echo $count
