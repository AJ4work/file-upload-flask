#!/bin/bash
# ApplicationStart deployment lifecycle event script
# Start your Flask app here (adjust as needed)
echo "Starting Flask application..."
cd /home/ec2-user/file-upload-flask
flask --app main run --host 0.0.0.0 &
