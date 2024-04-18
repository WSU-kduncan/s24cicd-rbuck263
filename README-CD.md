# CD Project Overview

## Overview
This project focuses on automating deployment using Git, GitHub, and Docker Hub.

## How to Generate a Tag in Git / GitHub
1. Use `git tag` with the version number (e.g., v1.0.0).
2. Push the tag to GitHub.

## Behavior of GitHub Workflow
When a tag is pushed, GitHub triggers a workflow to build and push Docker images to Docker Hub. The workflow follows semantic versioning.

## Link to Docker Hub Repository
[Docker Hub repository](https://hub.docker.com/repository/docker/rbuck263/project4-image)

