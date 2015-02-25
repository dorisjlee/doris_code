#!/bin/bash
DATA_PATH='../astro250/data/'
#ls $DATA_LOC >files.txt
cd $DATA_PATH
n=0
#for f in *.fits; do
	#echo $f
#	filename="${f%%.*}"
#	echo $filename
	for f  in *.fits;do
		filename2="${f%%.*}"
        	#echo $filename2'.fits'
		#echo $f
		if [ !  -a $filename2'.w.cat' ]
		#echo $filename2'.w.cat'
		#if [  -a 'bob.txt' ]
			then
			echo 'not-match:'$filename2'.w.cat'
			n=$(($n+1))
			#echo $filename2'.w.cat'
			#echo 'not matched'
		fi		
		#stuff
	done
#done
echo $n
