
for file in `ls *.txt`
do
	words=`cat $file | wc -w`
	lines=`cat $file | wc -l`

	if [ $words -eq 0 ]
	then
		echo "$file has been removed"
		rm $file
	elif [ $lines -lt 10 ]
	then
		echo "$file has less than 10 lines"
		mv $file short_$file
	elif [ $lines -le 20 ]
	then
		echo "$file has between 10 and 20 lines inclusive"
		mv $file medium_$file
	else
		echo "$file has more than 20 lines"
		mv $file long_$file
	fi
done
