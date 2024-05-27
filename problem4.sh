echo "Enter file name:"
read file
# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File '$file' not found."
    exit 1
fi

# Sort the file content alphabetically and store it in a temporary file
sort "$file" > sorted_"$file"

# Display the sorted content
echo "Sorted content of '$file':"
cat sorted_"$file" | head -n 5 | tail -n 2 | tee trimmed_"$file"


