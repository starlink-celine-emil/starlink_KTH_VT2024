#!/bin/bash

# Usage: ./dat_to_csv.sh input_file.dat output_file.csv


echo "timestamp,transfer,transfer_speed,bitrate,jitter,lost_total_datagrams,datagram_loss_percent" > "$2"
awk -v OFS=',' 'NR>1{datetime=$1" "$2; gsub(/[\(\)%]/,"",$14); print datetime, $7, $8, $9, $11, $13, $14}' "$1" >> "$2"

