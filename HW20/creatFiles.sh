#!/bin/bash
set -e
 
DIR="/opt/131224-wdm/nastyaKo/random_files"
 
mkdir -p "$DIR"
 
for i in {1..100}; do
     file="${DIR}/${RANDOM}.txt"
     touch "$file"
done
echo "100 files created in $DIR"
