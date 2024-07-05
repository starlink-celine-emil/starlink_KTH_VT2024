#!/bin/bash
echo "timestamp,min,avg,max,mdev" > "$2"
awk -v OFS=',' 'NR>1{datetime=$1" "$2; gsub("/",",",$6); print datetime,$6}' "$1" >> "$2"
