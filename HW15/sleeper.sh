#!/bin/bash
set -e
 
FOLDER="/opt/131224-wdm/nastyaKo/sleeper/"
mkdir -p $FOLDER
 
        for i in {1..10}; do
                date +"%H:%M:%S" >> $FOLDER/result.txt
                ps -ef | wc -l >> $FOLDER/result.txt
        done

echo "About CPU:" >> $FOLDER/result.txt
cat /proc/cpuinfo >> $FOLDER/result.txt
echo "About OS:" >> $FOLDER/result.txt
cat /etc/os-release | grep PRETTY_NAME | awk -F'"' '{print $2}' >> $FOLDER/result.txt
 
        for f in {50..100}; do
                touch $FOLDER/$f.txt
        done

echo "It works"
