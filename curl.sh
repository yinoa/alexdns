#!/bin/bash
# Example: ./curl.sh

dnsname=$1
dnsserver=$2

while true
do
  result=$(nslookup ${dnsname} ${dnsserver} | awk '!a[$0]++' | awk '!a[$0]++' |sed 's/\;;//'|egrep 'timed|reached'|xargs)
  ipAddr=$(ifconfig eth0 | grep -v inet6 | grep inet | awk '{print $2}')
  if [ -n "$result" ]; then
  echo "$(date -u +'%F %H:%M:%S.%3N') | ${HOSTNAME} | ${ipAddr} | ${dnsname} | ${result}" >> /filestorage/01/$HOSTNAME.txt
  fi
done
