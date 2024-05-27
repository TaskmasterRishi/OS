echo "Enter the file you want to copy"
read file1

echo "Enter the file to be copied to"
read file2

if [ -r "$file1" ]; then
    cat "$file1" > "$file2"
    echo "Copy completed"
    echo "Contents of $file2:"
    cat "$file2"
else
    echo "File '$file1' cannot be opened"
fi

