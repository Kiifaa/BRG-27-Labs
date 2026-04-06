#!/bin/bash

# Get current date for timestamped backup
now=$(date +"%d_%m_%y")

# Create backup directory if it doesn't exist
mkdir -p /home/kiefer/backup

# Copy all files from Documents into backup folder
cp -R /home/kiefer/Documents/* /home/kiefer/backup/

# Zip the backup folder with date as filename
zip -r /home/kiefer/$now.zip /home/kiefer/backup/*

# Move the zip file to home directory
cp /home/kiefer/$now.zip /home/kiefer/

# Optional: SCP to cloud server (skip if using VirtualBox only)
# scp -i /home/kiefer/key.pem /home/kiefer/$now.zip ubuntu@<your-server-ip>:/home/ubuntu/

# Print message to confirm script ran
echo "Backup completed: /home/kiefer/$now.zip"
