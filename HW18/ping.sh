#!/bin/bash
set  -e

read -p "Enter adrress: " target

count=0

while true
do
    result=$(ping -c 1 -W 1 "$target" | grep 'time=')

    if [ -z "$result" ]; then
        count=$((count + 1))
        echo "Unsuccessful attempts: $count"

        if [ "$count" -ge 3 ]; then
            echo "3 unsuccessful attempts"
            break
        fi
    else
        pingtime=$(echo "$result" | awk -F'time=' '{print $2}' | awk '{print $1}')
        if (( $(echo "$pingtime > 100" | bc -l) )); then
            echo "Ping time > 100 ms: $pingtime ms"
        fi

        count=0
    fi
    sleep 1
done

