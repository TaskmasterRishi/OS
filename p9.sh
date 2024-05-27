for i in $*
do
	cd $i
done
find -type d -empty > file10.txt
