#!/bin/bash

#Install Java jdk
sudo apt install openjdk-17-jre -y

# Import Jenkins GPG key
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Add Jenkins repository to apt sources
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package lists
sudo apt-get update -y

# Install Jenkins
sudo apt-get install jenkins -y

# Display initial admin password
echo "Jenkins Initial admin passwrod: "
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

