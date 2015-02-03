FILES=/home/joe/Downloads/supernatural/*

for i in $FILES
do
	if [[ "$i" == *\.torrent* ]]
		then
			 transmission-cli $i
 		 fi
done
