echo Enter the name of file
read file

if [ ! -f "$file" ]; then
	echo $file do not exist
fi

if [ ! -f "$file" ]; then
	echo $file do not have read permission
fi

if [ ! -w "$file" ]; then
	echo $file do not have write permission
fi

if [ ! -x "$file" ]; then
	echo $file do not have execute permission
fi
