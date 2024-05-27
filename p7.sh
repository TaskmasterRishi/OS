echo "Enter File name"
read file
echo "Do you want to convert from file from :\ 1)Lower case to Upper\ 2)Uppercase to Lowercase"
read choice

if [ $choice -eq 1 ]; then
    tr 'a-z' 'A-Z' < "$file" > temp.txt
    mv temp.txt "$file"
    echo "The file has been converted to Uppercase"
elif [ $choice -eq 2 ]; then
    tr 'A-Z' 'a-z' < "$file" > temp.txt
    mv temp.txt "$file"
    echo "The file has been converted to Lowercase"
else
    echo "Enter correct Choice"
fi

