#!/bin/bash
# Do not change the script name or input prompts.
# This script calculates simple interest given principal, annual rate of interest and time period in years.

# Author: Antigravity
# Additional Authors:
# shravanawala19

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = p*t*r / 100

echo "Enter the principal:"
read p
echo "Enter rate of interest per year:"
read r
echo "Enter time period in years:"
read t

# Input validation
re='^[0-9]+([.][0-9]+)?$'
if ! [[ $p =~ $re ]] || ! [[ $r =~ $re ]] || ! [[ $t =~ $re ]]; then
   echo "Error: Invalid input. Principal, rate of interest, and time period must be positive numbers." >&2
   exit 1
fi

s=$(awk "BEGIN {printf \"%.2f\", ($p * $t * $r) / 100}")
echo "The simple interest is: "
echo $s
