#!/bin/bash
echo "timestamp,ps,p0,temperature,rh,ah,t_dew,pressure" > "$2"
awk -v OFS=',' 'NR>1{datetime=$1" "$2;gsub(/PS=/,"",$8); gsub(/P0=/,"",$9);P0 = ($9 - prev);gsub(/T=/,"",$10); gsub(/RH=/,"",$11); gsub(/AH=/,"",$12); gsub(/T_DEW=/,"",$13); gsub(/P=/,"",$14); print datetime, $8,P0,$10,$11,$12,$13,$14} {prev = $9}' "$1" >> "$2"
