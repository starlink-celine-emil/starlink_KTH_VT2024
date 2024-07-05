#!/bin/bash
echo "timestamp,pathnr,pathname,ip,time,time2,time3" > "$2"
awk -v OFS=',' 'NR>1{datetime=$1" "$2; print datetime,$3,$4,$5,$6,$8,$10}' "$1" >> "$2"
