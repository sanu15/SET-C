#!/bin/bash

# Prompt for salary
read -p "Enter your salary: " salary

# Validate input
if ! [[ "$salary" =~ ^[0-9]+$ ]]; then
    echo "Invalid salary input. Please enter a numeric value."
    exit 1
fi

salary=$((salary))

# Tax logic
if [ "$salary" -lt 15000 ]; then
    tax=0
elif [ "$salary" -eq 15000 ]; then
    tax=$(echo "scale=2; $salary * 0.02" | bc)
elif [ "$salary" -le 30000 ]; then
    tax=$(echo "scale=2; $salary * 0.05" | bc)
else
    tax=$(echo "scale=2; $salary * 0.10" | bc)
fi

echo "Salary: ₹$salary"
echo "Calculated Tax: ₹$tax"
