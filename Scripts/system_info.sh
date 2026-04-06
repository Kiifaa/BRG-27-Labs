#!/bin/bash

echo "Current user:"
whoami

echo "Loop from 1 to 5:"
for i in {1..5}
do
  echo "Number: $i"
done

echo "Enter a number:"
read num

if ! [[ "$num" =~ ^[0-9]+$ ]]; then
  echo "Invalid input"
elif [ "$num" -gt 10 ]; then
  echo "Number is greater than 10"
elif [ "$num" -eq 10 ]; then
  echo "Number is exactly 10"
else
  echo "Number is less than 10"
fi
