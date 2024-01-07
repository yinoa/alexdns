#!/bin/bash
# Example: ./curl.sh

for i in {1..5}
do
    (
        while true
        do
            curl -I https://alexapp.alexazure.com
            sleep 1
        done
    ) &
done

wait
