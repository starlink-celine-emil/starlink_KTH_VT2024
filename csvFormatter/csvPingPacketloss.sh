#!/bin/bash
echo "timestamp,packetloss" > "$2"
awk -v OFS=',' 'NR>1{datetime=$1" "$2; gsub(/%/,"",$8); print datetime,$8}' "$1" >> "$2"
