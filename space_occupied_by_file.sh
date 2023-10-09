#!/bin/bash

# Define the target filesystem you want to check
target_fs="jenkins_install.yaml"

# Use the 'du' command to retrieve disk space information and filter by the target filesystem
usage_info=$(du -sh "$target_fs")

# Check if the target filesystem exists and display the usage information
if [ $? -eq 0 ]; then
  echo "Disk usage information for $target_fs:"
  echo "$usage_info"
else
  echo "Error: The specified filesystem '$target_fs' does not exist or could not be accessed."
fi
