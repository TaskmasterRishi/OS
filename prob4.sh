echo enter the value
read x
i=2
a=0
b=1
echo Fibinacci series of $x is :
echo $a
echo $b
while [ $i -lt $x ]
do
	c=$((a+b))
	a=$b
	b=$c
	i=$((i+1))
	echo $c
done
