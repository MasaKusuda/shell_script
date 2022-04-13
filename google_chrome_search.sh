#!/bin/bash
if test $# -eq 0;then
	query=""
else
	words=""
	declare -i i=0
	for word in "${@}";
	do
		i=i+1
		if test $i -eq $# ;then
			words="$words$word";
		else	
			words="$words$word+"
		fi
	done
	query="www.google.com/search?q=$words"
fi
echo $query
google-chrome $query
