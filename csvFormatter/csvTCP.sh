#!/bin/bash

# Usage: ./dat_to_csv.sh input_file.dat output_file.csv

echo "timestamp,transfer,bitrate" > "$2"
awk -v OFS=',' 'NR>1{datetime=$1" "$2; print datetime, $6,$8}' "$1" >> "$2"

