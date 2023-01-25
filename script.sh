#!/bin/bash

# Update the package manager
sudo yum update -y

# Install Git
sudo yum install git -y

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Install Docker CE
sudo yum install -y docker

# Start the Docker service
sudo systemctl start docker

# Enable service to start on boot
sudo systemctl enable docker

# Verify that Docker is running
sudo systemctl status docker

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

# Verify the installation
docker-compose --version
