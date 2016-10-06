
#awk -F, '{print $2,"from " $4 " to " $5}' presidents.csv |
#	awk -v x=1900 -F/ '{if ($3>x) print $0}'

{
	FS=","
	if (substr($4, length($4)-3)>1900)
	print $2, "from " $4 " to " $5
		
}

#	awk -F/ 'a $3>1900 {
#		print 
#	}'


#awk -F, '/[0-9]\{1,2\}[./\][0-9]\{1,2\}[./\][1-2][09][0-9][0-9]/gm
#awk -F, '{print $2, "from " $4 " to " $5}'
#awk -F, '{print substr($4,7,4)}' $4 presidents.csv 
#afk -F, '{print substr($4,1,11)}' $4 presidents.csv

