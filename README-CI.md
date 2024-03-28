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

## Process to Create Public Repo in DockerHub

1. Sign in to DockerHub.
2. Go to "Repositories".
3. Click "Create Repository".
4. Fill in details and set visibility to "Public".
5. Click "Create".

## Authenticate with DockerHub via CLI

1. Open a terminal.
2. Run: `docker login -u yourusername -p yourpassword`

## Push Container Image to DockerHub (without GitHub Actions)

To push a container image to DockerHub without using GitHub Actions, follow these steps:

1. Build Docker image using the following command: `docker build -t yourusername/yourimage:tag .`
2. Push Docker image to DockerHub using the following command: `docker push yourusername/yourimage:tag`

## Link to DockerHub Repository

You can find my DockerHub repository at: `https://hub.docker.com/r/rbuck263/ci-cd-github-actions-dockerhub`

## Configuring GitHub Secrets

To set a secret for GitHub repository, follow these steps:

1. Go to repository on GitHub.

2. Click on the "Settings" tab.

3. In the left sidebar, click on "Secrets".

4. Click on "New repository secret" button.

5. Enter name and value for your secret.

6. Click on "Add secret" to save the secret.

Secrets set for this project:
- `DOCKER_USERNAME`: DockerHub username
- `DOCKER_PASSWORD`: DockerHub password or access token

## Behavior of GitHub Workflow

The GitHub workflow automatically handles the following tasks:

- **What it does and when:** 
  - Whenever changes are pushed to the main branch of the repository, the workflow kicks in. It then builds the Docker image and pushes it to DockerHub.

- **Custom variables in workflow:**
  - If someone else wants to use or modify this workflow, they may need to adjust the following variables:
    - DockerHub username: This is the username associated with your DockerHub account.
    - DockerHub password or access token: This is the secret key that allows GitHub to authenticate and push Docker images to your DockerHub account.
    - Docker image name and tag: These parameters should match the desired DockerHub repository where the image will be stored.


