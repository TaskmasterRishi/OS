echo Enter the name of file
read file

if [ ! -f "$file" ]; then
    echo "File '$file' not found."
    exit 1
fi


tr '[:lower:]' '[:upper:]' < "$file" > "output.txt"

