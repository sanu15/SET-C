#!/bin/bash

# Prompt for age
read -p "Enter your age: " age

# Validate input
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "Invalid age input. Please enter a numeric value."
    exit 1
fi

age=$((age))

# Age classification
if [ "$age" -lt 13 ]; then
    echo "You are a Child."
elif [ "$age" -ge 13 ] && [ "$age" -le 19 ]; then
    echo "You are a Teenager."
else
    echo "You are an Adult."
fi
