#!/bin/bash
# ApplicationStart deployment lifecycle event script
# Start your Flask app here (adjust as needed)
echo "Starting Flask application..."
cd /home/ec2-user/file-upload-flask
# Activate Python virtual environment
source venv/bin/activate
flask --app main run --host 0.0.0.0 &
