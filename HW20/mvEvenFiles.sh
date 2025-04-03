#!/bin/bash
set -e
 
DIR="/opt/131224-wdm/nastyaKo/random_files"
EVEN="/opt/131224-wdm/nastyaKo/even_files"
mkdir -p "$EVEN"

for file in "$DIR"/*.txt; do
        number=$(echo "$file" | grep -oE "[0-9]+" | tail -n1)
        if [[ $((number % 2)) == 0 ]]; then
		mv "$file" "$EVEN/"
 
        fi
done

echo "Even files moved"
