> output.txt
for file in file1.txt file2.txt file3.txt file4.txt file5.txt
do
	tail -n 3 "$file" >> output.txt;
done
