#!/bin/bash
DATA_PATH='../astro250/data/'
#read -p "Enter in path where data is stored:" DATA_PATH
cd $DATA_PATH
echo "These are the FITS files that do not have a corresponding .cat file: "
	for f  in *.fits;do
		filename="${f%%.*}"
		if [ !  -f $filename'.w.cat' ]; #Use -f here not -a!!!!
			then
			echo $filename'.w.cat'
		fi		
	done

#Python versus Bash

#$time python hw1.py 
#real	0m0.015s
#user	0m0.006s
#sys	0m0.008s

#$time bash hw1.sh 
#real	0m0.005s
#user	0m0.002s
#sys	0m0.002s

#So bash scripts are much faster than python. (But the python script took me 5 minutes to code up, this bash script took 2 hours...)
