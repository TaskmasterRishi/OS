echo files with read, write and execute permission
for file in `ls`
do
	if [ -f "$file" ]
	then
		if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
        		echo "$file"
       		fi
       	fi
done
