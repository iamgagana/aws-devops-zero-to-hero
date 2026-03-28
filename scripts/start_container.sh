#!/bin/bash

# Stop and remove existing container if running
sudo docker stop simple-python-flask-app || true
sudo docker rm simple-python-flask-app || true

# Pull latest image
sudo docker pull gagana13/simple-python-flask-app:latest

# Run new container
sudo docker run -d \
  --name simple-python-flask-app \
  -p 5001:5001 \
  gagana13/simple-python-flask-app:latest
