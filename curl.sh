#!/bin/bash
# Example: ./curl.sh

for i in {1..2}
do
    (
        while true
        do
            curl -I https://alexapp.alexazure.com --resolve alexapp.alexazure.com:443:13.107.226.46
            sleep 1
        done
    ) &
done

wait
