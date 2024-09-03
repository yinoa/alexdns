#!/bin/bash
# Example: ./curl.sh

for i in {1..20}
do
    (
        while true
        do
            curl -I http://10.224.1.6
            sleep 5
        done
    ) &
done

wait
