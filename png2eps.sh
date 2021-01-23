#!/bin/bash

# measure execution time : start
SECONDS=0
NANOTIME_START=`date +%N`

# convert png to eps
#file=`find -maxdepth 10 -a -xtype f -a -name "*.png"`
#echo $file

for f in `find -maxdepth 10 -a -xtype f -a -name "*.png"`;
do
	echo "Converting : "$f
   	convert $f eps2:${f%.*}.eps
   	echo "Finish Convert : "$f
   	echo -e "\n"
done

# mesure execution time : end
time=$SECONDS
NANOTIME_END=`date +%N`
NANOTIME=`echo "scale=3; (${NANOTIME_END} - ${NANOTIME_START})/1000000000" | bc`

echo "execution time: " $time "[sec]"
echo "It took ${NANOTIME} sec"




