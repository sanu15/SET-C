#!/bin/bash

# Prompt for credentials
read -p "Enter username: " username
read -s -p "Enter password: " password
echo

# Authentication logic
if { [ "$username" == "admin" ] && [ "$password" == "testyantra123" ]; } || \
   { [ "$username" == "Developer" ] && [ "$password" == "Fireflink@123" ]; }; then
    echo "Authentication Successful ✅"
else
    echo "Authentication Unsuccessful ❌"
fi
