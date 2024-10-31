#!/bin/bash
# Script to check disk space

# Set the threshold percentage for disk usage (e.g., 80%)
THRESHOLD=80

# Get the current disk usage percentage of the root partition ("/")
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Display current disk usage
echo "Current disk usage is $USAGE%"

# Check if the usage is greater than or equal to the threshold
if [ $USAGE -ge $THRESHOLD ]
then
    echo "Warning: Disk space is running low! Used: $USAGE%"
else
    echo "Disk space is under control. Used: $USAGE%"
fi
