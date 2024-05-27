echo Enter your choice as given
echo 1 -\> Date command
echo 2 -\> Who command
echo 3 -\> PWD command
echo 4 -\> RANDOM command
read ans
case $ans in
1) date;;
2) who;;
3) pwd;;
4) echo $RANDOM;;
*) echo Please enter correct input
esac
