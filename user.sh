#!/bin/bash

# Prompt for credentials
read -p "Enter username: " username
read -s -p "Enter password: " password
echo

# Check credentials
if [ "$username" == "admin" ] && [ "$password" == "testyantra123" ]; then
    echo "Authentication Successful ✅"
else
    echo "Authentication Unsuccessful ❌"
fi
