echo "Enter file name"
read file
echo "Enter the word you want to count"
read word
count=0
for i in `cat $file`; do
    if [ "$i" = "$word" ]; then
        count=`expr $count + 1`
    fi
done
echo "Word count: $count"

