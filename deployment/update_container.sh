#!/bin/bash

# Pull the latest image from DockerHub
docker pull rbuck263/project4-image:latest

# Stop and remove the existing container
docker stop project4-container
docker rm project4-container

# Run a new container with the updated image
docker run -d -p 8080:80 --name project4-container rbuck263/project4-image:latest

