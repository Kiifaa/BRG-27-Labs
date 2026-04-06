#!/bin/bash

echo "System Resource Monitoring"

echo "How many times to check?"
read count

for ((i=1; i<=count; i++))
do
  echo "----- Check $i -----"

  echo "CPU Usage:"
  top -b -n1 | head -5

  echo "Memory Usage:"
  free -h

  echo "Disk Usage:"
  df -h

  echo "---------------------"

  sleep 3
done

echo "Monitoring complete."
