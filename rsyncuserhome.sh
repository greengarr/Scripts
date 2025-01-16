#!/bin/bash

# Prompt for 'someuser'
read -p "Enter the username for the source directory: " someuser

# Prompt for 'someip'
read -p "Enter the IP address or hostname of the destination: " someip

# Confirm inputs
echo "You entered:"
echo "Source user: $someuser"
echo "Destination IP/Hostname: $someip"

# Run rsync
sudo rsync -avzh /Users/$someuser/ networkm@$someip:/Users/Shared/ --progress
