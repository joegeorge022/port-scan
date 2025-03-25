#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <IP_ADDRESS> <START_PORT> <END_PORT>"
  exit 1
fi

IP=$1
START=$2
END=$3

echo "Scanning ports $START to $END on $IP..."

for port in $(seq $START $END); do
  if nc -z -w 1 $IP $port 2>/dev/null; then
    echo "Port $port is OPEN"
  fi
done

echo "Scan complete."
