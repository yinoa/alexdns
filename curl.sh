#!/bin/bash
# Example: ./curl.sh

for i in {1..5}
do
    (
        while true
        do
            curl -I https://alexapp.alexazure.com --resolve alexapp.alexazure.com:443:104.212.68.56
            sleep 1
        done
    ) &
done

wait
