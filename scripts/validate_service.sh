#!/bin/bash
# ValidateService deployment lifecycle event script
# Add health checks or validation logic here
echo "Validating Flask application..."
# Example: check if the app is running on port 5000
if nc -z localhost 5000; then
  echo "App is running."
  exit 0
else
  echo "App is NOT running."
  exit 1
fi
