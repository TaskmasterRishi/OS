for i in `cat allNUM.txt`
do
	if [ $i -le 50 ]; then
		echo  $i >> num1.txt ;
	else
		echo  $i >> num2.txt ;
	fi
done
