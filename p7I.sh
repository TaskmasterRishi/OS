word="$1"
file="$2"
count=0
for i in `cat $file`
do 
	if [ "$i" = "$word" ]; then
        	count=`expr $count + 1`
    	fi
done
echo "Word count: $count"
