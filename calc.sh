echo Enter num1 :
read x
echo Enter num2 : 
read y
echo Enter Choice
echo 1 for Addition
echo 2 for Substration
echo 3 for Multiplication
echo 4 for Division
read ans
case $ans in
1) echo Addition;echo `expr $x + $y`;;
2) echo Substration;echo `expr $x - $y`;;
3) echo Multiplication;echo `expr $x * $y`;;
4) echo Division;echo `expr $x \/ $y`;;
*) echo Enter corect opeartion
esac
