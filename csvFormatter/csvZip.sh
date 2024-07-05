#!/bin/sh

#current_time=$(date "+%Y.%m.%d-%H.%M.%S")
#echo "Current Time : $current_time"

#zip -r csv testdataplot/csv
#file_name = csv.zip

#newfileName=$file_name.$current_time

#cp $file_name $new_fileName
#zip -r "csv-$(date +"%Y-%m-%d").zip" -i /testdataplot/csv
#zip -r csv-2024-04-19.zip . -i /testdataplot/csv

now=$(date +"%Y%m%d")
cp -a /home/careau/Iperf/data/csvFiles/ csvFiles.$now
zip -r csvFiles.$now.zip csvFiles.$now
rm -r csvFiles.$now
mv csvFiles.$now.zip /home/careau/Iperf/exportZip
