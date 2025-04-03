#!/bin/bash
set -e

mkdir -p /opt/131224-wdm/nastyaKo/files_with_date

FOLDER="/opt/131224-wdm/nastyaKo/files_with_date"

DATE=$(date +"%d.%m.%y")
 
for i in {1..10}; do

    FILE="${i}_${DATE}"

    touch $FOLDER/$FILE
    echo "new file: $FILE" >> $FOLDER/info_file.log
done
echo "worked" >> $FOLDER/info_file.log
