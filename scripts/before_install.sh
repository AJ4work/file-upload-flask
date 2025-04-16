#!/bin/bash
# BeforeInstall deployment lifecycle event script
# Load environment variables from .env file in the app root if it exists
if [ -f /home/ec2-user/file-upload-flask/.env ]; then
  set -o allexport
  source /home/ec2-user/file-upload-flask/.env
  set +o allexport
  echo ".env file loaded from app root."
  sudo yum install nc -y
else
  echo ".env file not found in app root! Skipping environment variable export."
fi
# Add commands to stop services or clean up before install if needed
echo "Running BeforeInstall script..."
