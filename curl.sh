#!/bin/bash
# Example: ./curl.sh

for i in {1..20}
do
    (
        while true
        do
            curl -I http://4.193.201.159
            sleep 2
        done
    ) &
done

wait
