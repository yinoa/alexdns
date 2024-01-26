#!/bin/bash
# Example: ./curl.sh

for i in {1..10}
do
    (
        while true
        do
            curl -I http://10.2.22.5
            sleep 5
        done
    ) &
done

wait
