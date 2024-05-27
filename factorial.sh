echo Enter number :
read num
temp=$num
fac=1
while [ $temp -ge 1 ]
do 
	fac=$((fac*temp))
	temp=$((temp-1))
done
echo Factorial of $num : $fac
