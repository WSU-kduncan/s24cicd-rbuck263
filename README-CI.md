# CI Project Overview

## Overview
This repository is part of a project that automates building, testing, and deployment of my Destiny 2 fansite. The goal is to make development easier, improve code quality, and help with collaboration.

## Goals
- Automate building website.
- Test website automatically.
- Deploy website for testing.
- Make it easy for team members to work together.
- Improve quality of the code.

## Tools
- Git
- GitHub
- Docker
- Nginx
- GitHub Actions
- SSH

## Workflow
1. Developers make changes and push them to GitHub.
2. GitHub Actions automatically builds and tests website.
3. Website is deployed for testing.
4. Team members review and approve changes.
5. Approved changes are deployed to the live website.

## Configuration
- GitHub Actions used for automation.
- Dockerfiles used to build Docker images.

## Run Project Locally

### Install Docker and Dependencies
1. Install Docker Desktop for Windows from [Docker website](https://www.docker.com/products/docker-desktop).
2. Follow installation instructions provided by Docker Desktop.

### Build Docker Image
1. Open terminal and navigate to directory containing Dockerfile and website files.
2. Run command `docker build -t project4-image .` to build Docker image.

### Run Docker Container
1. After building Docker image, run `docker run -d -p 8080:80 project4-image` to start a Docker container.

### View Project Running in Container
1. Open a web browser and go to `http://localhost:8080` to see website running in the Docker container.


